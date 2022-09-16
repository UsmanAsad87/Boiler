import 'package:boiler/Constants/constants.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/PostInstallationAshp.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ASHPPictures extends StatelessWidget {
  const ASHPPictures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 20.h,
                        width: 35.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/Arrow 3.png"),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                  child: Text(
                "ASHP Picture",
                style: GoogleFonts.dmSans(
                    fontSize: 27.sp, fontWeight: FontWeight.w500),
              )),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Text(
                    "Choose Files",
                    style: GoogleFonts.dmSans(
                        fontSize: 22.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>CompleteBoilerBenchMark()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 49.h,
                      width: 165.w,
                      decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                      child: Center(
                          child: Text(
                        "Cylinder location",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400, fontSize: 19),
                      )),
                    ),
                    Container(
                      height: 49.h,
                      width: 165.w,
                      decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                      child: Center(
                          child: Text(
                        "Buffer Tank",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400, fontSize: 17),
                      )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Multi valve",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Under floor Manifold",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 15),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "D2",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Shunt Pump",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "D1",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Primary Pump",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "D2 terminates",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Radiators (Add as many needed)",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 15),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Expo Vessel",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Volumeiser",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "S / Y Plan",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Pipe runs",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Wiring Centre",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Filing loop",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Pump",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "User Controls",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Low Loss Header",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 15),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Immersion heater",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "ASHP rear pipes",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Add any more pics as required & name",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 15),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 30.h,
              ),
              Visibility(
                visible: bool1 == 1,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Cylinder File:",
                          style: GoogleFonts.dmSans(
                              fontSize: 22.sp, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 49.h,
                          width: 165.w,
                          decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                          child: Center(
                              child: Text(
                            "Cylinder location",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          )),
                        ),
                        Container(
                          height: 49.h,
                          width: 165.w,
                          decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                          child: Center(
                              child: Text(
                            "Multi valve",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400, fontSize: 19),
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 49.h,
                          width: 165.w,
                          decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                          child: Center(
                              child: Text(
                            "D1",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400, fontSize: 19),
                          )),
                        ),
                        Container(
                          height: 49.h,
                          width: 165.w,
                          decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                          child: Center(
                              child: Text(
                            "D2",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400, fontSize: 19),
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 49.h,
                          width: 165.w,
                          decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                          child: Center(
                              child: Text(
                            "Expo Vessel",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400, fontSize: 19),
                          )),
                        ),
                        Container(
                          height: 49.h,
                          width: 165.w,
                          decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                          child: Center(
                              child: Text(
                            "D2 Terminates",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400, fontSize: 19),
                          )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => PostInstallationAshp()));
                },
                child: Container(
                  height: 46,
                  width: 193,
                  decoration: BoxDecoration(
                      color: Color(0xff42FF55),
                      borderRadius: BorderRadius.circular(11)),
                  child: Center(
                    child: Text(
                      "Save",
                      style: GoogleFonts.dmSans(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
