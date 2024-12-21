import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/textform_filed.dart';

class PopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Adjust sizes and paddings based on screen size
    final double containerPadding = screenWidth * 0.05;
    final double textFontSize = screenWidth * 0.06;
    final double smallTextFontSize = screenWidth * 0.04;
    final double iconSize = screenWidth * 0.07;
    final double emailContainerHeight = screenHeight * 0.25;

    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(containerPadding, 15, containerPadding, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight/50,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: screenHeight * 0.05),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 15,
                            sigmaY: 15,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F7F9),
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(screenWidth * 0.04),
                              child: Icon(Icons.arrow_back_ios_rounded)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: screenHeight * 0.05),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: containerPadding),
                            child: Text(
                              'Forgot password',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: textFontSize,
                                height: 1.3,
                                color: Color(0xFF1B1E28),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Text(
                            'Enter your email account to reset your password',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: smallTextFontSize,
                              height: 1.3,
                              color: Color(0xFF7D848D),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  TextFormField(
                    decoration:ModifyTextField(
                      'abc@gmail.com',
                    ),
                  ),
                  SizedBox(
                    height: screenHeight/10,
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: screenHeight * 0.02),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFCFD8E2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: containerPadding * 0.9),
                        child: Text(
                          'Reset Password',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: smallTextFontSize,
                            height: 1.3,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              left: 0,
              right: 0,
              bottom: screenHeight * 0.35,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFE6E6E6),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: SizedBox(
                  width: screenWidth * 0.9,
                  height: emailContainerHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: screenHeight * 0.025),
                        decoration: BoxDecoration(
                          color: Color(0xFF000000),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(containerPadding * 0.5),
                          child: SvgPicture.asset(
                            'assets/vectors/email_x2.svg',
                            width: iconSize,
                            height: iconSize,
                          ),
                        ),
                      ),
                      Text(
                        'Check your email',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: textFontSize * 0.7,
                          height: 1.3,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'We have sent password recovery instructions to your email',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: smallTextFontSize,
                          height: 1.3,
                          color: Color(0xFF7D848D),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
