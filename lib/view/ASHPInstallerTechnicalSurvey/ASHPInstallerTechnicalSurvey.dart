import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/propertyDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class ASHPInstallerTechnicalSurvey extends StatelessWidget {
  const ASHPInstallerTechnicalSurvey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFEFEF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50.h,),
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
              Center(child: Text("    ASHP INSTALLER \n TECHNICAL SURVEY",style: GoogleFonts.dmSans(fontSize:27.sp,fontWeight: FontWeight.w500),)),
              SizedBox(height: 10.h,),
              Center(
                child: Container(
                    width: 240.w,
                    child: Divider(thickness: 1,color: Colors.black,)),
              ),
              SizedBox(height: 20.h,),




              SizedBox(height: 15.h,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Install Date:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Install Type:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Manpower:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Survey Date",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Survey by: ",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),
              SizedBox(height: 15.h,),




              SizedBox(height: 30.h,),

              Center(child: Text("CUSTOMER / PROPERTY\n              DETAILS",style: GoogleFonts.dmSans(fontSize:22.sp,fontWeight: FontWeight.w500),)),
              SizedBox(height: 10.h,),
              Center(
                child: Container(
                    width: 190.w,
                    child: Divider(thickness: 1,color: Colors.black,)),
              ),
              SizedBox(height: 15.h,),

              SizedBox(height: 15.h,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Customer Name:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),

              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),
              SizedBox(height: 10.h,),
              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Property Address:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,

                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )
                  ),
                ),
              ),


              SizedBox(height: 15.h,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Post Code:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Customer Contact Number(s):",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Email Address",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),
              SizedBox(height: 15.h,),





              SizedBox(height: 30.h,),

              InkWell(
                 onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PropertyDetails()));},
                child: Container(
                  height: 46.h,
                  width: 193.w,
                  decoration: BoxDecoration(
                      color: Color(0xff42FF55),
                      borderRadius: BorderRadius.circular(11)

                  ),
                  child: Center(
                    child: Text("Next",style: GoogleFonts.dmSans(fontSize: 15,fontWeight: FontWeight.w400),),
                  ),
                ),
              ),
              SizedBox(height: 30.h,),











            ],
          ),
        ));
  }
}
