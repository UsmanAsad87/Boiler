import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'RiskAssesment4.dart';
import 'RiskAssesment6.dart';
import 'RiskAssesment7.dart';

class RiskAssesment5 extends StatelessWidget {
  int role;
  RiskAssesment5({required this.role});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFEFEF),
        body: SingleChildScrollView(
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
              ),
              SizedBox(height: 20.h),
              Center(
                  child: Text(
                    "Risk Assessment",
                style: GoogleFonts.dmSans(
                    fontSize: 27.sp, fontWeight: FontWeight.w500),
              )),
             
              Center(
                child: Container(
                    width: 200.w,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Property Address:",
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
                      "Date of Assessment:",
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
                      "Assessment carriedout by:",
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
              //////////////



              SizedBox(
                height: 15.h,
              ),
              Center(
                  child: Text(
                "People Exposed:",
                style: GoogleFonts.dmSans(
                    fontSize: 22.sp, fontWeight: FontWeight.w500),
              )),
             
              Center(
                child: Container(
                    width: 170.w,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                  "Operative primarily, people working in the vicinity,\n public."),
              SizedBox(
                height: 10.h,
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
              Center(
                  child: Text(
                "Action/Control to \n Reduce Risk",
                style: GoogleFonts.dmSans(
                    fontSize: 22.sp, fontWeight: FontWeight.w500),
              )),
           Center(
                child: Container(
                    width: 175.w,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
              ),  Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Ensure good Housekeeping, Check Access / Egress Routes are clear and check cable / hose routes to prevent trip hazards:"),
              )
              ,SizedBox(height: 3,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  maxLines: 1,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),SizedBox(height: 3,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Protect those below Height work. Cover Walkways, Pad Scaffold"),
              ),SizedBox(height: 3,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  maxLines: 1,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),SizedBox(height: 3,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    "Only Trained Competent persons will erect / dismantle scaffold. Prior to any person using this equipment a competent person must inspect the scaffold / towers / edge protection and keep a record of the findings. Inspections to be carried out every seven days from date of erection. Scaffold / towers / edge protection must be prevented from collapse by using Rakers, Outriggers or Wall Anchor Ties. Control of the working area is to be undertaken using physical barriers and warning signs"),
              ),
                  SizedBox(
                height: 20.h,
              ),Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  maxLines: 1,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),SizedBox(height: 3,),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(
                  child: Text(
                "PPE",
                style: GoogleFonts.dmSans(
                    fontSize: 22.sp, fontWeight: FontWeight.w500),
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
              ),Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text("Operative / supervisor:"),
                  ),
                ],
              ),SizedBox(height: 3,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  maxLines: 1,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),SizedBox(height: 3,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Safety boots to be worn at all times, helmets to be worn as per site rules, suitable gloves to be worn for hot work:"),
              ),SizedBox(height: 3,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  maxLines: 1,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),SizedBox(height: 3,),
              
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>RiskAssesment6( role: role,)));},
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
                height: 30.h,
              ),
            ],
          ),
        ));
  }
}
