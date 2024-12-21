import 'package:flutter/material.dart';


InputDecoration ModifyTextField (String label){
  return InputDecoration(
      hintText: label,
      filled: true,
      fillColor:   Color(0xFFF7F7F9),
      focusColor: Color(0xFFF7F7F9),
    disabledBorder: OutlineInputBorder(),
    // enabledBorder: UnderlineInputBorder( //<-- SEE HERE
    //   borderSide: BorderSide(
    //       width:0, color: Color(0xFFF7F7F9)),
    // ),

  );
}