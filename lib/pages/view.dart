import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class View extends StatefulWidget {
  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       decoration: BoxDecoration(
         color: Color(0xFFFFFFFF),
         borderRadius: BorderRadius.circular(30),
       ),
       child: Stack(
         children: [
           Positioned(
             left: 0,
             right: 0,
             top: 0,
             bottom: 0,
             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
                 image: DecorationImage(
                   image: AssetImage(
                     'assets/images/badb_634985775_ab_28_d_9_d_515_ac.png',
                   ),
                 ),
               ),
               child: Container(
                 width: 375,
                 height: 812,
               ),
             ),
           ),
           Container(
             padding: EdgeInsets.fromLTRB(0, 15, 0, 8),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Container(
                   margin: EdgeInsets.fromLTRB(20, 0, 20, 44),
                   child: Align(
                     alignment: Alignment.topLeft,
                     child: SizedBox(
                       width: 189,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [

                           Container(
                             margin: EdgeInsets.fromLTRB(0, 11, 0, 11),
                             child: Text(
                               'View',
                               style: GoogleFonts.getFont(
                                 'Inter',
                                 fontWeight: FontWeight.w600,
                                 fontSize: 18,
                                 height: 1.2,
                                 color: Color(0xFFFFFFFF),
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.fromLTRB(24, 0, 24, 80),
                   child: Align(
                     alignment: Alignment.topRight,
                     child: SizedBox(
                       width: 184,
                       height: 149,
                       child: Stack(
                         children: [
                           Opacity(
                             opacity: 0.9,
                             child: ClipRect(
                               child: BackdropFilter(
                                 filter: ImageFilter.blur(
                                   sigmaX: 100,
                                   sigmaY: 100,
                                 ),
                                 child: Container(
                                   decoration: BoxDecoration(
                                     color: Color(0xFF3E3E3E),
                                     borderRadius: BorderRadius.circular(20),
                                   ),
                                   child: SizedBox(
                                     width: 184,
                                     child: Container(
                                       padding: EdgeInsets.fromLTRB(9, 8, 0, 8),
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Container(
                                             margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                                             child: Container(
                                               decoration: BoxDecoration(
                                                 borderRadius: BorderRadius.circular(16),
                                                 image: DecorationImage(
                                                   fit: BoxFit.cover,
                                                   image: AssetImage(
                                                     'assets/images/rectangle_8331.jpeg',
                                                   ),
                                                 ),
                                               ),
                                               child: Container(
                                                 width: 63,
                                                 height: 62,
                                               ),
                                             ),
                                           ),
                                           Container(
                                             margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                             child: Column(
                                               mainAxisAlignment: MainAxisAlignment.start,
                                               crossAxisAlignment: CrossAxisAlignment.center,
                                               children: [
                                                 Container(
                                                   margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                                                   child: Text(
                                                     'La-Hotel',
                                                     style: GoogleFonts.getFont(
                                                       'Inter',
                                                       fontWeight: FontWeight.w600,
                                                       fontSize: 16,
                                                       height: 1.3,
                                                       color: Color(0xFFFFFFFF),
                                                     ),
                                                   ),
                                                 ),
                                                 Container(
                                                   margin: EdgeInsets.fromLTRB(0, 0, 18.1, 0),
                                                   child: Text(
                                                     '2.09 mi',
                                                     style: GoogleFonts.getFont(
                                                       'Inter',
                                                       fontWeight: FontWeight.w400,
                                                       fontSize: 14,
                                                       height: 1.1,
                                                       color: Color(0xFFFFFFFF),
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
                                 ),
                               ),
                             ),
                           ),
                           Positioned(
                             right: 27,
                             bottom: 0,
                             child: SizedBox(
                               width: 24,
                               height: 72,
                               child: SvgPicture.asset(
                                 'assets/vectors/group_911_x2.svg',
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.fromLTRB(23, 0, 23, 46),
                   child: Align(
                     alignment: Alignment.topLeft,
                     child: SizedBox(
                       height: 149,
                       child: Stack(
                         children: [
                           Opacity(
                             opacity: 0.9,
                             child: ClipRect(
                               child: BackdropFilter(
                                 filter: ImageFilter.blur(
                                   sigmaX: 100,
                                   sigmaY: 100,
                                 ),
                                 child: Container(
                                   decoration: BoxDecoration(
                                     color: Color(0xFF3E3E3E),
                                     borderRadius: BorderRadius.circular(20),
                                   ),
                                   child: Container(
                                     padding: EdgeInsets.fromLTRB(8, 8, 9.1, 8),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Container(
                                           margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                                           child: Container(
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(16),
                                               image: DecorationImage(
                                                 fit: BoxFit.cover,
                                                 image: AssetImage(
                                                   'assets/images/rectangle_833.jpeg',
                                                 ),
                                               ),
                                             ),
                                             child: Container(
                                               width: 63,
                                               height: 62,
                                             ),
                                           ),
                                         ),
                                         Container(
                                           margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                           child: Column(
                                             mainAxisAlignment: MainAxisAlignment.start,
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Container(
                                                 margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                                                 child: Text(
                                                   'Lemon Garden',
                                                   style: GoogleFonts.getFont(
                                                     'Inter',
                                                     fontWeight: FontWeight.w600,
                                                     fontSize: 16,
                                                     height: 1.3,
                                                     color: Color(0xFFFFFFFF),
                                                   ),
                                                 ),
                                               ),
                                               Align(
                                                 alignment: Alignment.topLeft,
                                                 child: Text(
                                                   '2.09 mi',
                                                   style: GoogleFonts.getFont(
                                                     'Inter',
                                                     fontWeight: FontWeight.w400,
                                                     fontSize: 14,
                                                     height: 1.1,
                                                     color: Color(0xFFFFFFFF),
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
                               ),
                             ),
                           ),
                           Positioned(
                             left: 19,
                             bottom: 0,
                             child: SizedBox(
                               width: 24,
                               height: 72,
                               child: SvgPicture.asset(
                                 'assets/vectors/group_91_x2.svg',
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.fromLTRB(0, 0, 0, 27),
                   child: SizedBox(
                     width: 1025,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Container(
                           margin: EdgeInsets.fromLTRB(0, 19, 0, 18),
                           child: Opacity(
                             opacity: 0.9,
                             child: ClipRect(
                               child: BackdropFilter(
                                 filter: ImageFilter.blur(
                                   sigmaX: 100,
                                   sigmaY: 100,
                                 ),
                                 child: Container(
                                   decoration: BoxDecoration(
                                     color: Color(0xFFBFB6B6),
                                     borderRadius: BorderRadius.circular(20),
                                   ),
                                   child: Container(
                                     width: 335,
                                     height: 167,
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ),
                         Opacity(
                           opacity: 0.9,
                           child: ClipRect(
                             child: BackdropFilter(
                               filter: ImageFilter.blur(
                                 sigmaX: 100,
                                 sigmaY: 100,
                               ),
                               child: Container(
                                 decoration: BoxDecoration(
                                   color: Color(0xFF3E3E3E),
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                                 child: SizedBox(
                                   width: 335,
                                   child: Container(
                                     padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Container(
                                           margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Column(
                                                 mainAxisAlignment: MainAxisAlignment.start,
                                                 crossAxisAlignment: CrossAxisAlignment.center,
                                                 children: [
                                                   Container(
                                                     margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                                     child: Text(
                                                       'Niladri Reservoir',
                                                       style: GoogleFonts.getFont(
                                                         'Inter',
                                                         fontWeight: FontWeight.w500,
                                                         fontSize: 18,
                                                         height: 1.3,
                                                         letterSpacing: 0.5,
                                                         color: Color(0xFFFFFFFF),
                                                       ),
                                                     ),
                                                   ),
                                                   Container(
                                                     margin: EdgeInsets.fromLTRB(0, 0, 2.7, 0),
                                                     child: Column(
                                                       mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         Container(
                                                           margin: EdgeInsets.fromLTRB(2, 0, 0, 12),
                                                           child: Row(
                                                             mainAxisAlignment: MainAxisAlignment.start,
                                                             crossAxisAlignment: CrossAxisAlignment.start,
                                                             children: [
                                                               Container(
                                                                 margin: EdgeInsets.fromLTRB(0, 1.3, 6, 1.3),
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
                                                                               'assets/vectors/ellipse_8843_x2.svg',
                                                                             ),
                                                                           ),
                                                                         ),
                                                                       ],
                                                                     ),
                                                                   ),
                                                                 ),
                                                               ),
                                                               Text(
                                                                 'Tekergat, Sunamgnj',
                                                                 style: GoogleFonts.getFont(
                                                                   'Inter',
                                                                   fontWeight: FontWeight.w400,
                                                                   fontSize: 13,
                                                                   height: 1.2,
                                                                   letterSpacing: 0.3,
                                                                   color: Color(0xFFFFFFFF),
                                                                 ),
                                                               ),
                                                             ],
                                                           ),
                                                         ),
                                                         Align(
                                                           alignment: Alignment.topLeft,
                                                           child: Row(
                                                             mainAxisAlignment: MainAxisAlignment.start,
                                                             crossAxisAlignment: CrossAxisAlignment.start,
                                                             children: [
                                                               Container(
                                                                 margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                                                                 child: SizedBox(
                                                                   width: 16,
                                                                   height: 16,
                                                                   child: SvgPicture.asset(
                                                                     'assets/vectors/date_x2.svg',
                                                                   ),
                                                                 ),
                                                               ),
                                                               Container(
                                                                 child: Text(
                                                                   '45 Minutes',
                                                                   style: GoogleFonts.getFont(
                                                                     'Inter',
                                                                     fontWeight: FontWeight.w400,
                                                                     fontSize: 13,
                                                                     height: 1.2,
                                                                     letterSpacing: 0.3,
                                                                     color: Color(0xFFFFFFFF),
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
                                               Container(
                                                 margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                                                 child: Stack(
                                                   children: [
                                                     Row(
                                                       mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         Container(
                                                           margin: EdgeInsets.fromLTRB(0, 32, 3, 0),
                                                           child: Container(
                                                             decoration: BoxDecoration(
                                                               borderRadius: BorderRadius.circular(12),
                                                               image: DecorationImage(
                                                                 fit: BoxFit.cover,
                                                                 image: AssetImage(
                                                                   'assets/images/ellipse_21.png',
                                                                 ),
                                                               ),
                                                             ),
                                                             child: Container(
                                                               width: 24,
                                                               height: 24,
                                                             ),
                                                           ),
                                                         ),
                                                         Container(
                                                           margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                                                           child: Row(
                                                             mainAxisAlignment: MainAxisAlignment.start,
                                                             crossAxisAlignment: CrossAxisAlignment.start,
                                                             children: [
                                                               Container(
                                                                 margin: EdgeInsets.fromLTRB(0, 3, 12.5, 25.4),
                                                                 child: SizedBox(
                                                                   width: 12.1,
                                                                   height: 11.6,
                                                                   child: SvgPicture.asset(
                                                                     'assets/vectors/star_63_x2.svg',
                                                                   ),
                                                                 ),
                                                               ),
                                                               Text(
                                                                 '4.7',
                                                                 textAlign: TextAlign.right,
                                                                 style: GoogleFonts.getFont(
                                                                   'Inter',
                                                                   fontWeight: FontWeight.w400,
                                                                   fontSize: 15,
                                                                   height: 1.3,
                                                                   letterSpacing: 0.3,
                                                                   color: Color(0xFFFFFFFF),
                                                                 ),
                                                               ),
                                                             ],
                                                           ),
                                                         ),
                                                       ],
                                                     ),
                                                     Positioned(
                                                       left: 13,
                                                       bottom: 0,
                                                       child: Container(
                                                         decoration: BoxDecoration(
                                                           borderRadius: BorderRadius.circular(12),
                                                           image: DecorationImage(
                                                             fit: BoxFit.cover,
                                                             image: AssetImage(
                                                               'assets/images/ellipse_23.png',
                                                             ),
                                                           ),
                                                         ),
                                                         child: Container(
                                                           width: 24,
                                                           height: 24,
                                                         ),
                                                       ),
                                                     ),
                                                     Positioned(
                                                       right: 14,
                                                       bottom: 0,
                                                       child: Container(
                                                         decoration: BoxDecoration(
                                                           borderRadius: BorderRadius.circular(12),
                                                           image: DecorationImage(
                                                             fit: BoxFit.cover,
                                                             image: AssetImage(
                                                               'assets/images/ellipse_25.png',
                                                             ),
                                                           ),
                                                         ),
                                                         child: Container(
                                                           width: 24,
                                                           height: 24,
                                                         ),
                                                       ),
                                                     ),
                                                     Positioned(
                                                       right: 0,
                                                       bottom: 0,
                                                       child: Container(
                                                         decoration: BoxDecoration(
                                                           color: Color(0xFFE5F4FF),
                                                           borderRadius: BorderRadius.circular(12),
                                                         ),
                                                         child: Container(
                                                           height: 24,
                                                           padding: EdgeInsets.fromLTRB(2, 5, 1.2, 6),
                                                           child: Text(
                                                             '+50',
                                                             style: GoogleFonts.getFont(
                                                               'Inter',
                                                               fontWeight: FontWeight.w400,
                                                               fontSize: 11,
                                                               height: 1.2,
                                                               color: Color(0xFF1B1E28),
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
                                         ),
                                         Stack(
                                           children: [
                                             Positioned(
                                               left: 0,
                                               right: 0,
                                               top: 0,
                                               bottom: 0,
                                               child: ClipRRect(
                                                 borderRadius: BorderRadius.circular(16),
                                                 child: SizedBox(
                                                   width: 295,
                                                   height: 56,
                                                   child: SvgPicture.asset(
                                                     'assets/vectors/rectangle_821_x2.svg',
                                                   ),
                                                 ),
                                               ),
                                             ),
                                             Container(
                                               width: 295,
                                               padding: EdgeInsets.fromLTRB(0, 18, 0, 18),
                                               child: Text(
                                                 'See On The Map',
                                                 style: GoogleFonts.getFont(
                                                   'Inter',
                                                   fontWeight: FontWeight.w600,
                                                   fontSize: 16,
                                                   height: 1.3,
                                                   color: Color(0xFF000000),
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
                             ),
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
    );
  }
}