import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'RiskAssesment7.dart';
import 'RiskAssesment9.dart';

class RiskAssesment8 extends StatelessWidget {
  int role;
  RiskAssesment8({required this.role});


  @override
  Widget build(BuildContext context) {
    print(role);
    return Scaffold(
        backgroundColor: Color(0xffEFEFEF),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                      onTap:(){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height:20.h,
                        width: 35.w,
                        decoration: BoxDecoration(

                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/Arrow 3.png"),
                            )

                        ),),
                    ),
                  ],
                ),
              ),SizedBox(height: 20.h),
              Center(
                  child: Text(
                "PPE",
                style: GoogleFonts.dmSans(
                    fontSize: 27.sp, fontWeight: FontWeight.w500),
              )),
             
              Center(
                child: Container(
                    width: 50.w,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
              ),
             
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Safety boots to be worn at all times, helmets to\n be worn as per site rules, suitable gloves to be\n worn for hot work:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix4(
                  readOnly: false, keyboardType: TextInputType.text),SizedBox(height: 6,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Hazard\nSeverity\nH/M/L",
                    style: GoogleFonts.dmSans(
                        fontSize: 17.sp, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Chance\nH/M/L",
                    style: GoogleFonts.dmSans(
                        fontSize: 17.sp, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Risk\nH/M/L",
                    style: GoogleFonts.dmSans(
                        fontSize: 17.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "L",
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(color: Colors.white),
                    height: 60,
                    width: 50,
                  ),
                  Container(
                    child: Text(
                      "L",
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(color: Colors.white),
                    height: 60,
                    width: 50,
                  ),
                  Container(
                    child: Text(
                      "L",
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(color: Colors.white),
                    height: 60,
                    width: 50,
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "L",
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(color: Colors.white),
                    height: 60,
                    width: 50,
                  ),
                  Container(
                    child: Text(
                      "L",
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(color: Colors.white),
                    height: 60,
                    width: 50,
                  ),
                  Container(
                    child: Text(
                      "L",
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(color: Colors.white),
                    height: 60,
                    width: 50,
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "L",
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(color: Colors.white),
                    height: 60,
                    width: 50,
                  ),
                  Container(
                    child: Text(
                      "L",
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(color: Colors.white),
                    height: 60,
                    width: 50,
                  ),
                  Container(
                    child: Text(
                      "L",
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(color: Colors.white),
                    height: 60,
                    width: 50,
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(
                  child: Text(
                "Training",
                style: GoogleFonts.dmSans(
                    fontSize: 22.sp, fontWeight: FontWeight.w500),
              )),
              Center(
                child: Container(
                  width: 80.w,
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Inhouse working at heights training:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix4(
                  readOnly: false, keyboardType: TextInputType.text),
              SizedBox(
                height: 15.h,
              ),
             
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Training to be carried out via competent person:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix4(
                  readOnly: false, keyboardType: TextInputType.text),
              SizedBox(
                height: 15.h,
              ),Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Training to be carried out via competent person:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix4(
                  readOnly: false, keyboardType: TextInputType.text),
              SizedBox(
                height: 15.h,
              ),Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Training to be carried out via:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix4(
                  readOnly: false, keyboardType: TextInputType.text),
              SizedBox(
                height: 15.h,
              ),
              Center(
                  child: Text(
                "Assessment",
                style: GoogleFonts.dmSans(
                    fontSize: 22.sp, fontWeight: FontWeight.w500),
              )),
              Center(
                child: Container(
                    width: 130.w,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                    "To be reviewed from site to site or where work scope changes"),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              SizedBox(
                height: 15.h,
              ), Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                    "To be reviewed from site to site or where work scope changes"),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RistAssesment9(role:role,)));
                },
                child: Container(
                  height: 46.h,
                  width: 193.w,
                  decoration: BoxDecoration(
                      color: Color(0xff42FF55),
                      borderRadius: BorderRadius.circular(11)),
                  child: Center(
                    child: Text(
                      "Next",
                      style: GoogleFonts.dmSans(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
