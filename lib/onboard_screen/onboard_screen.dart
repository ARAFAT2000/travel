import 'package:flutter/material.dart';
import 'package:flutter_app/pages/sign_in.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../bottom_navbar/bottom_navbar_screen.dart';
import '../pages/onboard_1.dart';
import '../pages/onboard_2.dart';
import '../pages/onboard_3.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              Onboard1(),
              Onboard2(),
              Onboard3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmoothPageIndicator(controller: _controller, count: 3),
                SizedBox(
                  height: screenHeight / 45,
                ),
                GestureDetector(
                  onTap: () {
                    if (_currentPage == 2) {
                      // If on the last page, navigate to the BottomNavigationBar screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignIn(),  // Your BottomNavigationBar screen
                        ),
                      );
                    } else {
                      // If not on the last page, go to the next page
                      _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                      screenWidth * 0.05,
                      0,
                      screenWidth * 0.05,
                      screenHeight * 0.02,
                    ),
                    child: Container(
                      width: screenHeight * 12,
                      decoration: BoxDecoration(
                        color: Color(0xFFCFD8E2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                          0,
                          screenHeight * 0.02,
                          1,
                          screenHeight * 0.02,
                        ),
                        child: Center(
                          child: Text(
                            _currentPage == 2 ? 'Finish' : 'Next',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth * 0.043,
                              height: 1.3,
                              color: Color(0xFF342626),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
