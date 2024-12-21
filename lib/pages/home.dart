import 'package:flutter/material.dart';
import 'package:flutter_app/pages/details.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: 20),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight/27,
              ),
              SizedBox(
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF7F7F9),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      padding: EdgeInsets.all(4),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFFDFE6),
                              borderRadius: BorderRadius.circular(18.5),
                            ),
                            padding: EdgeInsets.all(5),
                            child: SvgPicture.asset(
                              'assets/vectors/group_1_x2.svg',
                              width: screenWidth * 0.1,
                              height: screenWidth * 0.1,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Leonardo',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: screenWidth * 0.04,
                              color: Color(0xFF1B1E28),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF7F7F9),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      padding: EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        'assets/vectors/notifications_x2.svg',
                        width: screenWidth * 0.06,
                        height: screenWidth * 0.06,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.08,
                    color: Color(0xFF1B1E28),
                  ),
                  children: [
                    TextSpan(
                      text: 'Explore the ',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w300,
                        fontSize: screenWidth * 0.08,
                        color: Color(0xFF2E323E),
                      ),
                    ),
                    TextSpan(text: 'Beautiful '),
                    TextSpan(
                      text: 'world!',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.08,
                        color: Color(0xFF6BABF2),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 28,
                    child: Text(
                      'Best Destination',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        height: 1.4,
                        color: Color(0xFF1B1E28),
                      ),
                    ),
                  ),
                  Text(
                    'View all',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.035,
                      color: Color(0xFFCFD8E2),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                    },
                    child: Expanded(
                      child: _buildCard(
                        screenWidth,
                        'Niladri Reservoir',
                        'assets/images/rectangle_27.png',
                        'assets/vectors/star_6_x2.svg',
                        4.7,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: _buildCard(
                      screenWidth,
                      'Dharmo sala',
                      'assets/images/rectangle_34.png',
                      'assets/vectors/star_6_x2.svg',
                      4.5,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: SvgPicture.asset(
                  'assets/vectors/rectangle_15_x2.svg',
                  width: screenWidth,
                  height: screenHeight * 0.1,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(double screenWidth,
      String title,
      String imagePath,
      String iconPath,
      double rating,

      ) {

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x1FB4BCC9),
            offset: Offset(0, 6),
            blurRadius: 8,
          ),
        ],
      ),
      padding: EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imagePath),
              ),
            ),
            height: screenWidth * 0.5,
          ),
          SizedBox(height: 14),
          Text(
            title,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: screenWidth * 0.045,
              color: Color(0xFF1B1E28),
            ),
          ),
          SizedBox(height: 4),
          Row(
            children: [
              SvgPicture.asset(
                iconPath,
                width: screenWidth * 0.05,
                height: screenWidth * 0.05,
              ),
              SizedBox(width: 8),
              Text(
                '$rating',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04,
                  color: Color(0xFF1B1E28),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
