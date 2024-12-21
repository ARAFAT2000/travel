import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(30),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, screenHeight * 0.05),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage('assets/images/afbea_4990382431.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: AspectRatio(
                      aspectRatio: 375 / 444,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(screenWidth * 0.07, 15, screenWidth * 0.05, 0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE3F0FF),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: SizedBox(
                                        width: screenWidth * 0.5,
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(0, 10, 17.8, 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 2, 5.7, 1),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                        'assets/images/flight_1.png',
                                                      ),
                                                    ),
                                                  ),
                                                  child: Container(
                                                    width: screenWidth * 0.061,
                                                    height: screenHeight * 0.031,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Explore the World',
                                                style: GoogleFonts.manrope(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                  height: 1.9,
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
                            Positioned(
                              right: screenWidth * 0.06,
                              bottom: screenHeight * 0.04,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/banner_png.png',
                                    ),
                                  ),
                                ),
                                child: Container(
                                  width: screenWidth * 0.7,
                                  height: screenHeight * 0.5,
                                ),
                              ),
                            ),
                            // Positioned(
                            //   right: screenWidth * 0.005,
                            //   top: screenHeight * 0.05,
                            //   child: SizedBox(
                            //     height: 24,
                            //     child: Text(
                            //       'Skip',
                            //       style: GoogleFonts.robotoCondensed(
                            //         fontWeight: FontWeight.w400,
                            //         fontSize: 18,
                            //         height: 1.3,
                            //         color: Color(0xFFCAEAFF),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            Positioned(
                              right: -0.3,
                              bottom: screenHeight * 0.11,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/review_png.png',
                                    ),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x12000000),
                                      offset: Offset(0, 2),
                                      blurRadius: 3.5,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  width: screenWidth * 0.57,
                                  height: screenHeight * 0.1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, screenHeight * 0.05),
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
                              margin: EdgeInsets.fromLTRB(0, 0, 0, screenHeight * 0.01),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, screenHeight * 0.01),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text: 'Life is short and the world is ',
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w900,
                                          fontSize: screenWidth * 0.08,
                                          height: 1.2,
                                          color: Color(0xFF1B1E28),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'wide',
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
                                      right: screenWidth * 0.15,
                                      bottom: 0,
                                      child: SizedBox(
                                        width: screenWidth * 0.17,
                                        height: screenHeight * 0.015,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_2524_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(11.3, 0, 11.3, 0),
                              child: Text(
                                'At Friends tours and travel, we customize reliable and trustworthy educational tours to destinations all over the world',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.robotoCondensed(
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.043,
                                  height: 1.5,
                                  color: Color(0xFF7D848D),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
