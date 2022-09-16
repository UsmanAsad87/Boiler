import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Rbutton extends StatelessWidget {
  const Rbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 50.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          border: Border.all(width: 1, color: Colors.black12)),
      child: Center(
        child: Container(
          height: 40.h,
          width: 40.w,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.green),
          child: Center(
              child: Text(
            "R",
            style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w400, fontSize: 20, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
