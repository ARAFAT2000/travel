import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navbar/bottom_navbar_screen.dart';
import 'package:flutter_app/pages/home.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    // Get screen size
    final size = MediaQuery.of(context).size;
    final padding = EdgeInsets.symmetric(
      horizontal: size.width * 0.05,
      vertical: size.height * 0.02,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: padding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight/50,
                ),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
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
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  'OTP Verification',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.06,
                    color: Color(0xFF1B1E28),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  'Please check your email www.uihut@gmail.com to see the verification code',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * 0.04,
                    color: Color(0xFF7D848D),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'OTP Code',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.05,
                      color: Color(0xFF1B1E28),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                PinCodeTextField(
                  appContext: context,
                  pastedTextStyle: TextStyle(
                    color: Colors.green.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                  length: 4,
                  obscureText: true,
                  blinkWhenObscuring: true,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,  // This makes the fields square or rectangular
                    borderRadius: BorderRadius.circular(10), // Adjust the border radius to make it a perfect square

                    inactiveColor: Colors.grey,   // Color when field is inactive
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavbarScreen()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                    decoration: BoxDecoration(
                      color: Color(0xFFCFD8E2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        'Verify',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * 0.05,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Resend code to',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: size.width * 0.04,
                        color: Color(0xFF7D848D),
                      ),
                    ),
                    Text(
                      '01:26',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: size.width * 0.04,
                        color: Color(0xFF7D848D),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
