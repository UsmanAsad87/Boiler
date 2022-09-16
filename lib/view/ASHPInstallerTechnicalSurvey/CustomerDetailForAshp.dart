import 'package:boiler/model/TextField2.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/ASHPInstallerTechnicalSurvey.dart';
import 'package:boiler/view/installMenuOfBoiler/installMenuOfBoiler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerDetailForAshp extends StatelessWidget {
  const CustomerDetailForAshp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 260.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/Rectangle 79.png"))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150.h,
                    ),
                    Text(
                      "We’re your new Heating\n          Super heroes",
                      style: GoogleFonts.spaceGrotesk(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "With just a few simple steps",
                      style: GoogleFonts.spaceGrotesk(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          color: Color(0xff232323)),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "What You Like to install?",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                            color: Color(0xff232323)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ASHPInstallerTechnicalSurvey()));
                    },
                    child: Container(
                      height: 42.h,
                      width: 342,
                      decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Boiler",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),

                  Container(
                    height: 42.h,
                    width: 342,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "ASHP",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                            color: Colors.white),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20.h,
                  ),

                  Center(
                      child: Text(
                    "Fill Your Details",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 28.sp,
                        color: Color(0xff232323)),
                  )),
                  Row(
                    children: [
                      Text(
                        "Name:",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp,
                            color: Color(0xff232323)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextFormFieldWithPrefix2(
                    keyboardType: TextInputType.text,
                    readOnly: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Address:",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp,
                            color: Color(0xff232323)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextFormFieldWithPrefix2(
                    keyboardType: TextInputType.text,
                    readOnly: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Postcode:",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp,
                            color: Color(0xff232323)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextFormFieldWithPrefix2(
                    keyboardType: TextInputType.text,
                    readOnly: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Mobile No:",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp,
                            color: Color(0xff232323)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextFormFieldWithPrefix2(
                    keyboardType: TextInputType.text,
                    readOnly: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Date:",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp,
                            color: Color(0xff232323)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextFormFieldWithPrefix2(
                    keyboardType: TextInputType.text,
                    readOnly: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                      child: Text(
                    "ASHP Details",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 28.sp,
                        color: Color(0xff232323)),
                  )),
                  SizedBox(
                    height: 20.h,
                  ),

                  ///////////
                  Row(
                    children: [
                      Text(
                        "ASHP Model No:",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp,
                            color: Color(0xff232323)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextFormFieldWithPrefix2(
                    keyboardType: TextInputType.text,
                    readOnly: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "KW's Size:",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp,
                            color: Color(0xff232323)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextFormFieldWithPrefix2(
                    keyboardType: TextInputType.text,
                    readOnly: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Serial No:",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp,
                            color: Color(0xff232323)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextFormFieldWithPrefix2(
                    keyboardType: TextInputType.text,
                    readOnly: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Location:",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp,
                            color: Color(0xff232323)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextFormFieldWithPrefix2(
                    keyboardType: TextInputType.text,
                    readOnly: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Do you want to install Cylinder?",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Color(0xff232323)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 46.h,
                        width: 148,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xff42FF55)),
                        child: Center(
                            child: Text(
                          "Yes",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400, fontSize: 17),
                        )),
                      ),
                      Container(
                        height: 46.h,
                        width: 148,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xffD9D9D9)),
                        child: Center(
                            child: Text(
                          "No",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400, fontSize: 17),
                        )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  Row(
                    children: [
                      Text(
                        "Model No:",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp,
                            color: Color(0xff232323)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextFormFieldWithPrefix2(
                    keyboardType: TextInputType.text,
                    readOnly: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Size Litres:",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp,
                            color: Color(0xff232323)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextFormFieldWithPrefix2(
                    keyboardType: TextInputType.text,
                    readOnly: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Location:",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp,
                            color: Color(0xff232323)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextFormFieldWithPrefix2(
                    keyboardType: TextInputType.text,
                    readOnly: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InstallMenuOfBoiler()));
                    },
                    child: Container(
                      height: 46.h,
                      width: 106,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xff42FF55)),
                      child: Center(
                          child: Text(
                        "Next Step",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400, fontSize: 17.sp),
                      )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
