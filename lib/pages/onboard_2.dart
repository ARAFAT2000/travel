import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(screenWidth * 0.08),
      ),
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, screenHeight * 0.01),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight/5,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, screenHeight * 0.05),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFE3F0FF),
                          borderRadius: BorderRadius.circular(screenWidth * 0.08),
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(screenWidth * 0.02, screenHeight * 0.02, screenWidth * 0.05, screenHeight * 0.26),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [


                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCFD8E2),
                                    borderRadius: BorderRadius.circular(screenWidth * 0.13),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.035, vertical: screenHeight * 0.008),
                                    child: Text(
                                      'Discover Now',
                                      style: GoogleFonts.manrope(
                                        fontWeight: FontWeight.w700,
                                        fontSize: screenWidth * 0.035,
                                        height: 2,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight/12,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.002, screenHeight * 0.05),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, screenHeight * 0.03),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(screenWidth * 0.004, 0, screenWidth * 0.001, screenHeight * 0.01),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, screenHeight * 0.01),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            text: 'It’s a big world out there go ',
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w900,
                                              fontSize: screenWidth * 0.08,
                                              height: 1.2,
                                              color: Color(0xFF1B1E28),
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'explore',
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: screenWidth * 0.08,
                                                  height: 1.3,
                                                  color: Color(0xFF6BABF2),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          right: screenWidth * 0.064,
                                          bottom: 0,
                                          child: SizedBox(
                                            width: screenWidth * 0.27,
                                            height: screenHeight * 0.014,
                                            child: SvgPicture.asset(
                                              'assets/vectors/vector_25241_x2.svg',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  'To get the best of your adventure you just need to leave and go where you like. we are waiting for you',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.robotoCondensed(
                                    fontWeight: FontWeight.w400,
                                    fontSize: screenWidth * 0.043,
                                    height: 1.5,
                                    color: Color(0xFF7D848D),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight/55,
                    ),


                  ],
                ),
              ),
              Positioned(
                left: -screenWidth * 0.02,
                top: screenHeight * 0.11,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/banner_png_1.png',
                      ),
                    ),
                  ),
                  child: Container(
                    width: screenWidth * 1.02,
                    height: screenHeight * 0.47,
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.1, screenHeight * 0.02, screenWidth * 0.1, 0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Begin Your',
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.043,
                          height: 1.5,
                          color: Color(0xFF000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Fantastic Travel Experience ',
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w800,
                              fontSize: screenWidth * 0.043,
                              height: 1.3,
                            ),
                          ),
                          TextSpan(
                            text: 'Here',
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.043,
                              height: 1.5,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
