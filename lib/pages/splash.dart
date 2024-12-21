import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/onboard_screen/onboard_screen.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // Set a timer for 3 seconds and then navigate to the home screen
    Timer(Duration(seconds: 3), () {
      // Replace with your desired screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            color: Color(0xFFCFD8E2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text(
                  'Travenor',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w900,
                    fontSize: screenWidth * 0.09,
                    height: 1.2,
                    color: Color(0xFF000000),
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
