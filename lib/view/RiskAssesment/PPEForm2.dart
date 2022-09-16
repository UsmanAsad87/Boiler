import 'package:boiler/model/completeBoilerTextField.dart';
import 'package:boiler/view/RiskAssesment/RiskAssesmentForm1.dart';
import 'package:boiler/view/RiskAssesment/Risk_Assesment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class PPEForm2 extends StatelessWidget {
  int role;
  PPEForm2({required this.role});

  @override
  Widget build(BuildContext context) {
    print(role);
    return  Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    "PPE",
                    style: GoogleFonts.dmSans(
                        fontSize: 27.sp, fontWeight: FontWeight.w500),
                  )),

              SizedBox(
                height: 15.h,
              ),
              Text(
                "Safety boots to be worn at all times, helmets to be worn as per site rules, suitable gloves to be worn for hot work",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                maxLines: 2,
              ),

              SizedBox(
                height: 15.h,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Hazard\n Severity\n H/M/L",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Chance\n H/M/L",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Risk\n H/M/L",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 121.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:  Text(
                        "L",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    height: 121.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:  Text(
                        "L",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    height: 121.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:  Text(
                        "L",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 121.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:  Text(
                        "L",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    height: 121.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:  Text(
                        "M",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    height: 121.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:  Text(
                        "L",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 121.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:  Text(
                        "L",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    height: 121.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:  Text(
                        "L",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    height: 121.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:  Text(
                        "L",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 121.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:  Text(
                        "M",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    height: 121.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:  Text(
                        "M",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    height: 121.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:  Text(
                        "M",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 121.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:  Text(
                        "L",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    height: 121.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:  Text(
                        "M",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    height: 121.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:  Text(
                        "M",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),



              SizedBox(
                height: 15.h,
              ),

              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    Text(
                      "Training",
                      style: GoogleFonts.dmSans(
                          fontSize: 25.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 68.0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15.h,
              ),
              Text(
                "Training in kinetic handling, only trained operatives to use machinery. COSHH information to be provided.",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    Text(
                      "Assessment",
                      style: GoogleFonts.dmSans(
                          fontSize: 25.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 68.0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "To be reviewed from site to site or where workscope changes",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),

              SizedBox(
                height: 30.h,
              ),

              InkWell(
                onTap: () {
                   Navigator.push(context,
                   MaterialPageRoute(builder: (context) => RiskAssesment3(role: role,)));
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
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
