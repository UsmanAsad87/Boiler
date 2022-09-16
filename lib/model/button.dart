import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  MyButton({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.h,
      width: 344.w,
      decoration: BoxDecoration(
          color: Color(0xff42FF55), borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        text,
        style: GoogleFonts.dmSans(
            fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
      )),
    );
  }
}
