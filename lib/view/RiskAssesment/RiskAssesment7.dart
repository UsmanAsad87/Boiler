import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'RiskAssesment4.dart';
import 'RiskAssesment8.dart';
import 'RiskAssesment9.dart';

class RiskAssesment7 extends StatelessWidget {
  int role;
  RiskAssesment7({required this.role});


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
              ),   Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    "All operatives will have received training in manual handling techniques Suitable scaffolding and/or working platforms to be used where necessary. Only competent persons to erect."),
              ),
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
              ), Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    "Visually Inspect the area for Overhead Power Lines and Electric Supply Cables. Ensure Isolated if Height Work is in direct vicinity."),
              ),
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
              ), Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    "Safe access / egress must be gained using a company ladder of the correct length and strength bearing the current test date. If the tower or scaffold is generally accessible, a 2 metre high security fence must be erected around its base.* Ladder work is limited to 15minutes or 2 Linear metres"),
              ),
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
              ), Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    "Adverse Weather Conditions must be taken into account when carrying out height work especially in windy conditions."),
              ),
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
              ),SizedBox(height: 12,),
              InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>RiskAssesment8(role: role,)));},
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
