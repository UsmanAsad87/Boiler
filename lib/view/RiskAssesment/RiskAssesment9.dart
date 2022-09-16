import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/InstallMenuOfAshp.dart';
import 'package:boiler/view/installMenuOfBoiler/installMenuOfBoiler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class RistAssesment9 extends StatelessWidget {
  int role;
  RistAssesment9({required this.role});

  @override
  Widget build(BuildContext context) {
    print("chal gea${role}");
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
                padding: const EdgeInsets.all(3.0),
                child: Text(
                    "General. Ensure a detailed Method Statement is provided for all Height work operations. Secure the work area, Protect Public Persons. Record 7 Day Inspection results in Scaffold Register"),
              ),SizedBox(
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
              ), SizedBox(height: 12,), Center(
                  child: Text(
                    "PPE",
                    style: GoogleFonts.dmSans(
                        fontSize: 22.sp, fontWeight: FontWeight.w500),
                  )),
              Center(
                child: Container(
                    width: 45.w,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
              ), SizedBox(height: 12,),
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
              SizedBox(height: 12,),
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
              ),SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(

                    decoration: BoxDecoration(color: Colors.white),
                    height: 200,
                    width: 45,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    height: 200,
                    width: 45,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    height: 200,
                    width: 45,
                  ),
                ],
              ),

              SizedBox(height: 12,), Center(
                  child: Text(
                    "Training",
                    style: GoogleFonts.dmSans(
                        fontSize: 22.sp, fontWeight: FontWeight.w500),
                  )),
              Center(
                child: Container(
                    width: 75.w,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
              ),Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text("Competent person:"),
                  ),
                ],
              ),
              SizedBox(height: 12,),
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
              ),SizedBox(height: 12,), Center(
                  child: Text(
                    "Assessment",
                    style: GoogleFonts.dmSans(
                        fontSize: 22.sp, fontWeight: FontWeight.w500),
                  )),
              Center(
                child: Container(
                    width: 125.w,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
              ), SizedBox(height: 12,),
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
              ), SizedBox(height: 12,),
              InkWell(
                 onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>role==1?InstallMenuOfBoiler():InstallMenuOfAshp()));},
                child: Container(
                  height: 46.h,
                  width: 193.w,
                  decoration: BoxDecoration(
                      color: Color(0xff42FF55),
                      borderRadius: BorderRadius.circular(11)),
                  child: Center(
                    child: Text(
                      "Done",
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

