import 'package:flutter/material.dart';
import 'package:flutter_app/pages/verification.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/textform_filed.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
     body: Container(
       decoration: BoxDecoration(
         color: Color(0xFFFFFFFF),
         borderRadius: BorderRadius.circular(screenWidth * 0.08),
       ),
       child: Container(
         padding: EdgeInsets.fromLTRB(
             screenWidth * 0.053, screenHeight * 0.02, screenWidth * 0.048, screenHeight * 0.01),
         child: SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               SizedBox(
                 height: screenHeight/50,
               ),
               Container(
                 margin: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.005, screenHeight * 0.05),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
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
                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Container(
                           margin: EdgeInsets.fromLTRB(0, 0, 0, screenHeight * 0.05),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Container(
                                 margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: screenHeight * 0.015),
                                 child: Text(
                                   'Forgot password',
                                   style: GoogleFonts.inter(
                                     fontWeight: FontWeight.w600,
                                     fontSize: screenWidth * 0.07,
                                     height: 1.3,
                                     color: Color(0xFF1B1E28),
                                   ),
                                 ),
                               ),
                               Text(
                                 'Enter your email account to reset your password',
                                 textAlign: TextAlign.center,
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
                         TextFormField(
                           decoration:ModifyTextField(
                             'abc@gmail.com',
                           ),
                         ),
                         SizedBox(
                           height: screenHeight/10,
                         ),
                         InkWell(
                           onTap: (){
                             Navigator.push(context,
                                 MaterialPageRoute(builder: (context)=>Verification()));
                           },
                           child: Container(
                             decoration: BoxDecoration(
                               color: Color(0xFFCFD8E2),
                               borderRadius: BorderRadius.circular(screenWidth * 0.04),
                             ),
                             child: Container(
                               width: screenWidth*12,
                               padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.045, vertical: screenHeight * 0.02),
                               child: Center(
                                 child: Text(
                                   'Reset Password',
                                   style: GoogleFonts.inter(
                                     fontWeight: FontWeight.w600,
                                     fontSize: screenWidth * 0.045,
                                     height: 1.3,
                                     color: Color(0xFF000000),
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

             ],
           ),
         ),
       ),
     )
    );
  }
}
