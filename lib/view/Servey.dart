import 'package:boiler/view/ASHPInstallerTechnicalSurvey/ASHPInstallerTechnicalSurvey.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/InstallMenuOfAshp.dart';
import 'package:boiler/view/InstallBoilerTechnicalSurvey/InstallBoilerTechnicalSevay.dart';
import 'package:boiler/view/installMenuOfBoiler/installMenuOfBoiler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class Survey extends StatefulWidget {
  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  var role=1;

  var yes=0;

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
                  SizedBox(height: 30.h,),
                  Row(
                    children: [
                      Text(
                        "Survey",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 25.sp,
                            color: Color(0xff232323)),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h,),

                  InkWell(
                    onTap: (){
                      setState(() {
                        role=1;
                      });
                    },
                    child: Container(
                      height: 42.h,
                      width: 342,
                      decoration: role==1?BoxDecoration(
                          color:Colors.red,
                          borderRadius: BorderRadius.circular(20)
                      ):
                      BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text(
                            "Boiler",
                            style: role==1?GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp,
                                color: Colors.white):
                            GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp,
                                color: Colors.black)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        role=2;
                      });
                    },
                    child: Container(
                      height: 42.h,
                      width: 342,
                      decoration: role==2?BoxDecoration(
                          color:Colors.red,
                          borderRadius: BorderRadius.circular(20)
                      ):
                      BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text(
                            "ASHP",
                            style: role==2?GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp,
                                color: Colors.white):
                            GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp,
                                color: Colors.black)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h,),


                  InkWell(
                    onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>role==1?InstallBoilerTechnicalSevay():ASHPInstallerTechnicalSurvey()));

                    },
                    child: Container(
                      height: 46.h,
                      width: 106,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xff42FF55)
                      ),
                      child: Center(child: Text("Next Step",style: GoogleFonts.dmSans(fontWeight: FontWeight.w400,fontSize: 17.sp),)),
                    ),
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
