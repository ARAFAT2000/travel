import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboard3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(screenWidth * 0.08),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, screenHeight * 0.01),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, screenHeight * 0.05),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth * 0.08),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/a_6624_a_42_c_117099537_c_7_a_1320256_d_1.png',
                      ),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.056,
                      screenHeight * 0.02,
                      screenWidth * 0.048,
                      screenHeight * 0.21,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    SizedBox(
                      height: screenHeight/6,
                    ),
                        Container(
                          margin: EdgeInsets.only(bottom: screenHeight * 0.013),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'We Make Every Trips Special',
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w800,
                                fontSize: screenWidth * 0.064,
                                height: 1.3,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFCFD8E2),
                              borderRadius: BorderRadius.circular(screenWidth * 0.12),
                            ),
                            child: SizedBox(
                              width: screenWidth * 0.34,
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.008),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.036, 0),
                                      child: Text(
                                        'View More',
                                        style: GoogleFonts.manrope(
                                          fontWeight: FontWeight.w700,
                                          fontSize: screenWidth * 0.032,
                                          height: 1.5,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0,
                                          screenHeight * 0.007,
                                          0,
                                          screenHeight * 0.005),
                                      width: screenWidth * 0.027,
                                      height: screenHeight * 0.015,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_1_x2.svg',
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
              ),
              Container(
                margin: EdgeInsets.only(bottom: screenHeight * 0.07),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: screenHeight * 0.03),
                      child: SizedBox(
                        height: screenHeight * 0.21,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Stack(
                                children: [
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: 'People don’t take trips, trips take ',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w900,
                                        fontSize: screenWidth * 0.08,
                                        height: 1.2,
                                        color: Color(0xFF1B1E28),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'people',
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
                                    right: screenWidth * 0.05,
                                    bottom: screenHeight * 0.035,
                                    child: SizedBox(
                                      width: screenWidth * 0.24,
                                      height: screenHeight * 0.014,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_25243_x2.svg',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                bottom: 0,
                                child: SizedBox(
                                  height: screenHeight * 0.09,
                                  width: screenWidth * 0.9,
                                  child: Text(
                                    'To get the best of your adventure you just need to leave and go where you like. We are waiting for you.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.robotoCondensed(
                                      fontWeight: FontWeight.w400,
                                      fontSize: screenWidth * 0.043,
                                      height: 1.5,
                                      color: Color(0xFF7D848D),
                                    ),
                                  ),
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



            ],
          ),
        ),
      ),
    );
  }
}
