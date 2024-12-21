import 'package:flutter/material.dart';
import 'package:flutter_app/pages/sign_in.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/textform_filed.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
     body: Container(
       decoration: BoxDecoration(
         color: Color(0xFFFFFFFF),
         borderRadius: BorderRadius.circular(screenWidth * 0.08),
       ),
       child: Container(
         padding: EdgeInsets.fromLTRB(screenWidth * 0.053, screenHeight * 0.02, screenWidth * 0.048, screenHeight * 0.01),
         child: SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               SizedBox(
                 height: screenHeight / 10,
               ),
               Container(
                 margin: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.005, screenHeight * 0.05),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Container(
                           margin: EdgeInsets.fromLTRB(0, 0, 0, screenHeight * 0.05),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Container(
                                 margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.04, vertical: screenHeight * 0.02),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     Container(
                                       margin: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.002, screenHeight * 0.015),
                                       child: Text(
                                         'Sign up now',
                                         style: GoogleFonts.inter(
                                           fontWeight: FontWeight.w600,
                                           fontSize: screenWidth * 0.07,
                                           height: 1.3,
                                           color: Color(0xFF1B1E28),
                                         ),
                                       ),
                                     ),
                                     Text(
                                       'Please fill the details and create account',
                                       style: GoogleFonts.inter(
                                         fontWeight: FontWeight.w400,
                                         fontSize: screenWidth * 0.045,
                                         height: 1.3,
                                         color: Color(0xFF7D848D),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                               SizedBox(
                                 height: screenHeight / 40,
                               ),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.fromLTRB(0, 0, 0, screenHeight * 0.02),
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         TextFormField(
                                           decoration: ModifyTextField(
                                             'Leonardo Smith',
                                           ),
                                         ),
                                         SizedBox(
                                           height: screenHeight / 45,
                                         ),
                                         TextFormField(
                                           decoration: ModifyTextField(
                                             'abc@gmail.com',
                                           ),
                                         ),
                                         SizedBox(
                                           height: screenHeight / 45,
                                         ),
                                         TextFormField(
                                           obscureText: showPassword,
                                           decoration: InputDecoration(
                                             suffixIcon: InkWell(
                                               onTap: () {
                                                 setState(() {
                                                   showPassword = !showPassword;
                                                 });
                                               },
                                               child: Icon(
                                                 showPassword
                                                     ? Icons.visibility
                                                     : Icons.visibility_off,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),
                                   Align(
                                     alignment: Alignment.topLeft,
                                     child: Text(
                                       'Password must be 8 characters',
                                       style: GoogleFonts.inter(
                                         fontWeight: FontWeight.w400,
                                         fontSize: screenWidth * 0.04,
                                         height: 1.1,
                                         color: Color(0xFF7D848D),
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ),
                         Container(
                           margin: EdgeInsets.fromLTRB(0, 0, 0, screenHeight * 0.04),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Container(
                                 width: screenWidth * 12,
                                 decoration: BoxDecoration(
                                   color: Color(0xFFCFD8E2),
                                   borderRadius: BorderRadius.circular(screenWidth * 0.04),
                                 ),
                                 child: TextButton(
                                   style: TextButton.styleFrom(
                                     padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04, vertical: screenHeight * 0.02),
                                   ),
                                   onPressed: () {
                                     // Navigate to the SignIn page
                                     Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) => SignIn()),
                                     );
                                   },
                                   child: Text(
                                     'Sign Up',
                                     style: GoogleFonts.inter(
                                       fontWeight: FontWeight.w600,
                                       fontSize: screenWidth * 0.05,
                                       color: Color(0xFF000000),
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         SizedBox(
                           height: screenHeight / 105,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Container(
                               margin: EdgeInsets.only(bottom: screenHeight * 0.025),
                               child: Text(
                                 'Don’t have an account?',
                                 style: GoogleFonts.inter(
                                   fontWeight: FontWeight.w400,
                                   fontSize: screenWidth * 0.037,
                                   height: 1.1,
                                   color: Color(0xFF707B81),
                                 ),
                               ),
                             ),
                             InkWell(
                               onTap: () {
                                 // Navigate to the SignIn page
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => SignIn()),
                                 );
                               },
                               child: Container(
                                 margin: EdgeInsets.only(bottom: screenHeight * 0.025),
                                 child: Text(
                                   '  Sign In',
                                   style: GoogleFonts.inter(
                                     fontWeight: FontWeight.w400,
                                     fontSize: screenWidth * 0.037,
                                     height: 1.1,
                                     color: Color(0xFF707B81),
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         Container(
                           margin: EdgeInsets.only(bottom: screenHeight * 0.025),
                           child: Text(
                             '  Or Connect ',
                             style: GoogleFonts.inter(
                               fontWeight: FontWeight.w400,
                               fontSize: screenWidth * 0.037,
                               height: 1.1,
                               color: Color(0xFF707B81),
                             ),
                           ),
                         ),
                         SizedBox(
                           height: screenWidth * 0.12,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Container(
                               margin: EdgeInsets.fromLTRB(0, 0.7, 5.8, 0.3),
                               child: SizedBox(
                                 width: screenWidth * 0.08,
                                 height: screenHeight * 0.08,
                                 child: SvgPicture.asset(
                                   'assets/vectors/group_3321_x2.svg',
                                 ),
                               ),
                             ),
                             SizedBox(
                               width: screenWidth * 0.03,
                             ),
                             Container(
                               margin: EdgeInsets.fromLTRB(0, 0.7, 5.8, 0.3),
                               child: SizedBox(
                                 width: screenWidth * 0.08,
                                 height: screenHeight * 0.08,
                                 child: SvgPicture.asset(
                                   'assets/vectors/group_x2.svg',
                                 ),
                               ),
                             ),
                             SizedBox(
                               width: screenWidth * 0.03,
                             ),
                             Container(
                               margin: EdgeInsets.fromLTRB(0, 0.7, 5.8, 0.3),
                               child: SizedBox(
                                 width: screenWidth * 0.08,
                                 height: screenHeight * 0.08,
                                 child: SvgPicture.asset(
                                   'assets/vectors/vector_x2.svg',
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ],
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
