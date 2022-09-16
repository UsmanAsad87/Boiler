import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'RiskAssesment4.dart';
import 'RiskAssesment5.dart';
import 'RiskAssesment8.dart';

class RiskAssesment3 extends StatelessWidget {
  int role;
  RiskAssesment3({required this.role});


  @override
  Widget build(BuildContext context) {
    print(role);
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
              ),
             
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    "Every place of work from which a person is liable to fall must have a means to prevent falls.  Before starting all height work, a visual inspection must be carried out to ensure the proper equipment is used for the work at height task. E.g. Scaffold; Alloy Tower: Mobile Elevated Work Platform. There must be systematic planning and a Detailed Method Statement. Roof Work: Visual Inspection of the Roof must be carried out to ensure that the roof will support the persons andthe materials required for the task. Suitable edge  protection must be erected by trained competent personnel. Any opening lights or lantern lights on the roof must be boarded over. "),
              ),
              SizedBox(
                height: 30.h,
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
              
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    "Safety boots to be worn at all times, safety elmets and hi visibility clothing to be worn as per site rules, suitable gloves to be worn for hot work. Safety harness to be used at discretion of "),
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
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>RiskAssesment4(role:role,)));},
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
