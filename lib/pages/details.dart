import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: screenHeight * 0.4,  // 40% of screen height
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/rectangle_27.png'),
                      ),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.05, // 5% of screen width
                          vertical: screenHeight * 0.02,  // 2% of screen height
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Opacity(
                                    opacity: 0.16,
                                    child: ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 15,
                                          sigmaY: 15,
                                        ),
                                        child: Container(
                                          width: screenWidth * 0.12,  // 12% of screen width
                                          height: screenWidth * 0.12,  // 12% of screen width
                                          decoration: BoxDecoration(
                                            color: Color(0xFF1B1E28),
                                            borderRadius: BorderRadius.circular(22),
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.arrow_back_ios_rounded,
                                              color: Colors.white,
                                              size: screenWidth * 0.05,  // 5% of screen width
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Details',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth * 0.045,  // 4.5% of screen width
                                    height: 1.2,
                                    color: Colors.white,
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.16,
                                  child: ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 15,
                                        sigmaY: 15,
                                      ),
                                      child: Container(
                                        width: screenWidth * 0.12,  // 12% of screen width
                                        height: screenWidth * 0.12,  // 12% of screen width
                                        decoration: BoxDecoration(
                                          color: Color(0xFF1B1E28),
                                          borderRadius: BorderRadius.circular(22),
                                        ),
                                        child: Center(
                                          child: SvgPicture.asset(
                                            'assets/vectors/rectangle_8151_x2.svg',
                                            width: screenWidth * 0.03,  // 5% of screen width
                                            height: screenHeight * 0.03,  // 5% of screen height
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Positioned(
                    top: -16,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        width: screenWidth,
                        height: screenHeight/1,
                        child: SvgPicture.asset(
                          'assets/vectors/rectangle_14_x2.svg',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth,
                    height: screenHeight/1,//height: 461

                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 16, 13.6, 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 17),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 7.4, 24),
                                  child: Opacity(
                                    opacity: 0.2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF7D848D),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Container(
                                        width: 36,
                                        height: 5,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 6.4, 24),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                                                  child: Text(
                                                    'Niladri Reservoir',
                                                    style: GoogleFonts.getFont(
                                                      'Inter',
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 24,
                                                      height: 1.3,
                                                      letterSpacing: 0.5,
                                                      color: Color(0xFF1B1E28),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    'Tekergat, Sunamgnj',
                                                    style: GoogleFonts.getFont(
                                                      'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 15,
                                                      height: 1.3,
                                                      letterSpacing: 0.3,
                                                      color: Color(0xFF7D848D),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(24),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                      'assets/images/ellipse_25.png',
                                                    ),
                                                  ),
                                                ),
                                                child: Container(
                                                  width: 48,
                                                  height: 48,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 0, 38.8, 20),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(0, 3.3, 6, 3.3),
                                                        child: SizedBox(
                                                          width: 16,
                                                          height: 16,
                                                          child: Container(
                                                            padding: EdgeInsets.fromLTRB(4, 4, 4, 5.3),
                                                            child: Stack(
                                                              clipBehavior: Clip.none,
                                                              children: [
                                                                Container(
                                                                  width: 4,
                                                                  height: 4,
                                                                ),
                                                                Positioned(
                                                                  bottom: -5.3,
                                                                  child: SizedBox(
                                                                    width: 12,
                                                                    height: 13.3,
                                                                    child: SvgPicture.asset(
                                                                      'assets/vectors/ellipse_8842_x2.svg',
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        'Tekergat',
                                                        style: GoogleFonts.getFont(
                                                          'Inter',
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 15,
                                                          height: 1.3,
                                                          letterSpacing: 0.3,
                                                          color: Color(0xFF7D848D),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 3, 12.5, 25.4),
                                                      child: SizedBox(
                                                        width: 12.1,
                                                        height: 11.6,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/star_61_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                                      child: Text(
                                                        '4.7',
                                                        textAlign: TextAlign.right,
                                                        style: GoogleFonts.getFont(
                                                          'Inter',
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 15,
                                                          height: 1.3,
                                                          letterSpacing: 0.3,
                                                          color: Color(0xFF1B1E28),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                                      child: Text(
                                                        '(2498)',
                                                        style: GoogleFonts.getFont(
                                                          'Inter',
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 15,
                                                          height: 1.3,
                                                          letterSpacing: 0.3,
                                                          color: Color(0xFF7D848D),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                              child: RichText(
                                                text: TextSpan(
                                                  style: GoogleFonts.getFont(
                                                    'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15,
                                                    height: 1.3,
                                                    letterSpacing: 0.3,
                                                    color: Color(0xFF7D848D),
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: '\$59/',
                                                      style: GoogleFonts.getFont(
                                                        'Inter',
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 15,
                                                        height: 1.3,
                                                        letterSpacing: 0.3,
                                                        color: Color(0xFFCFD8E2),
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: 'Person',
                                                      style: GoogleFonts.getFont(
                                                        'Inter',
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 15,
                                                        height: 1.3,
                                                        letterSpacing: 0.3,
                                                        color: Color(0xFF7D848D),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 27.4, 18),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 26, 0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/rectangle_822.jpeg',
                                                ),
                                              ),
                                            ),
                                            child: Container(
                                              height: 42,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 26, 0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/rectangle_823.jpeg',
                                                ),
                                              ),
                                            ),
                                            child: Container(
                                              height: 42,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 26, 0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/rectangle_824.jpeg',
                                                ),
                                              ),
                                            ),
                                            child: Container(
                                              height: 42,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 26, 0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/rectangle_825.jpeg',
                                                ),
                                              ),
                                            ),
                                            child: Container(
                                              height: 42,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            //  color: Color(),
                                            borderRadius: BorderRadius.circular(12),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/rectangle_8331.jpeg',
                                              ),
                                            ),
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(9, 12, 8.5, 14),
                                            child: Text(
                                              '+16',
                                              style: GoogleFonts.getFont(
                                                'Inter',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                height: 1.1,
                                                color: Color(0xFFFFFFFF),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 32.9, 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'About Destination',
                                            style: GoogleFonts.getFont(
                                              'Inter',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20,
                                              height: 1.4,
                                              color: Color(0xFF1B1E28),
                                            ),
                                          ),
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: 'You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC... ',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            height: 1.7,
                                            color: Color(0xFF7D848D),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'Read More',
                                              style: GoogleFonts.getFont(
                                                'Inter',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13,
                                                height: 1.3,
                                                color: Color(0xFF0079FF),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight/10,
                                ),
                                InkWell(
                                  onTap: (){

                                  },
                                  child: Container(
                                    width: screenWidth*12,
                                    margin: EdgeInsets.fromLTRB(0, 0, 6.4, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFCFD8E2),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(0, 18, 1, 18),
                                        child: Center(
                                          child: Text(
                                            'Book Now',
                                            style: GoogleFonts.getFont(
                                              'Inter',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              height: 1.3,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
