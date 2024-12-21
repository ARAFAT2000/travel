import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navbar/bottom_navbar_screen.dart';
import 'package:flutter_app/pages/forgot_password.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/sign_up.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/textform_filed.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String password = '';
 // Initialize the password variable
  bool showPassword = false;
 // Initialize the showPassword flag


  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;


    return Scaffold(
     body: Container(
       decoration: BoxDecoration(
         color: Color(0xFFFFFFFF),
         borderRadius: BorderRadius.circular(screenWidth * 0.08),
       ),
       child: Padding(
         padding: EdgeInsets.fromLTRB(
             screenWidth * 0.053, screenHeight * 0.02, screenWidth * 0.048, screenHeight * 0.01),
         child: SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               SizedBox(
                 height: screenHeight/8,
               ),
               Container(
                 margin: EdgeInsets.fromLTRB(
                     0, 0, screenWidth * 0.0045, screenHeight * 0.07),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [

                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Container(
                           margin: EdgeInsets.only(bottom: screenHeight * 0.06),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Container(
                                 margin: EdgeInsets.only(bottom: screenHeight * 0.018),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     Container(
                                       margin: EdgeInsets.only(
                                           bottom: screenHeight * 0.015),
                                       child: Text(
                                         'Sign in now',
                                         style: GoogleFonts.inter(
                                           fontWeight: FontWeight.w600,
                                           fontSize: screenWidth * 0.07,
                                           height: 1.3,
                                           color: Color(0xFF1B1E28),
                                         ),
                                       ),
                                     ),
                                     Text(
                                       'Please sign in to continue our app',
                                       style: GoogleFonts.inter(
                                         fontWeight: FontWeight.w400,
                                         fontSize: screenWidth * 0.043,
                                         height: 1.3,
                                         color: Color(0xFF7D848D),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                               SizedBox(
                                 height: screenHeight/40,
                               ),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.end,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(bottom: screenHeight * 0.024),
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         TextFormField(
                                           decoration:ModifyTextField(
                                             'abc@gmail.com',
                                           ),
                                         ),
                                         SizedBox(
                                           height: screenHeight/45,
                                         ),
                                         TextFormField(
                                           obscureText:showPassword ,
                                           decoration:InputDecoration(
                                               suffixIcon: InkWell(
                                                   onTap: (){
                                                     setState(() {
                                                       showPassword=!showPassword;
                                                     });
                                                   },
                                                   child: Icon(showPassword?Icons.visibility:Icons.visibility_off))
                                           ),
                                         ),

                                       ],
                                     ),
                                   ),
                                   InkWell(
                                     onTap: (){
                                       Navigator.push(context,
                                           MaterialPageRoute(builder: (context)=>ForgotPassword()));
                                     },
                                     child: Text(
                                       'Forget Password?',
                                       style: GoogleFonts.inter(
                                         fontWeight: FontWeight.w500,
                                         fontSize: screenWidth * 0.037,
                                         height: 1.1,
                                         color: Color(0xFFCFD8E2),
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ),
                         Container(
                           margin: EdgeInsets.only(bottom: screenHeight * 0.15),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Container(
                                 width: screenWidth*12,
                                 //  margin: EdgeInsets.only(bottom: screenHeight * 0.06),
                                 decoration: BoxDecoration(
                                   color: Color(0xFFCFD8E2),
                                   borderRadius: BorderRadius.circular(screenWidth * 0.043),
                                 ),
                                 padding: EdgeInsets.symmetric(
                                     vertical: screenHeight * 0.023),
                                 child: InkWell(
                                   onTap: (){
                                     Navigator.push(context,
                                         MaterialPageRoute(builder: (context)=>BottomNavbarScreen()));
                                   },
                                   child: Center(
                                     child: Text(
                                       'Sign In',
                                       style: GoogleFonts.inter(
                                         fontWeight: FontWeight.w600,
                                         fontSize: screenWidth * 0.043,
                                         height: 1.3,
                                         color: Color(0xFF000000),
                                       ),
                                     ),
                                   ),
                                 ),
                               ),
                               SizedBox(
                                 height : screenWidth*0.16,
                               ),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
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
                                         onTap: (){
                                           Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                                         },
                                         child: Container(
                                           margin: EdgeInsets.only(bottom: screenHeight * 0.025),
                                           child: Text(
                                             '  Sign up',
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
                                     height : screenWidth*0.16,
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
                                         width: screenWidth*0.03,
                                       ),
                                       Container(
                                         margin: EdgeInsets.fromLTRB(0, 0.7, 5.8, 0.3),
                                         child: SizedBox(
                                           width: screenWidth * 0.08,
                                           height: screenHeight * 0.08,
                                           child: SvgPicture.asset(
                                             'assets/vectors/group_x2.svg'
                                             ,
                                           ),
                                         ),
                                       ),
                                       SizedBox(
                                         width: screenWidth*0.03,
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
