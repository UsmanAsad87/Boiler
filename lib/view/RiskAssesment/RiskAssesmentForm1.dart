import 'package:boiler/model/completeBoilerTextField.dart';
import 'package:boiler/view/RiskAssesment/PPEForm2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/constants.dart';
import '../../Manual handling dropdown/dropDown.dart';

class RiskAssesmentForm1 extends StatelessWidget {
  int role;
  RiskAssesmentForm1({required this.role});


  @override
  Widget build(BuildContext context) {
     print(role);
     print("booo ki value...............${bool1}");
    return Scaffold(
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
                "Risk Assessment",
                style: GoogleFonts.dmSans(
                    fontSize: 27.sp, fontWeight: FontWeight.w500),
              )),

              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Property Address:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
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
                children: [
                  Text(
                    "Date of Assessment:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                maxLines: 2,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none)),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Assessment carriedout by:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),
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
                      "Hazards Identified",
                      style: GoogleFonts.dmSans(
                          fontSize: 25.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 48.0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("Severity",style: TextStyle(fontSize: 10),),
                    ),
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Chance",style: TextStyle(
                          fontSize: 10
                        ),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Risk",style: TextStyle(fontSize: 10),),
                      ),
                    ),
                  ),],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Use of Portable power tools Electrical shock:",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
                   SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Manual Handling:",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(5.0),
                       child: Container(
                         width: 50.w,
                         height: 50.h,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(10),
                         ),
                         child: Center(
                           child:Padding(
                             padding: const EdgeInsets.only(left:15.0),
                             child: dropDown(selectedItem: "L",),
                           )
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(5.0),
                       child: Container(
                         width: 50.w,
                         height: 50.h,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(10),
                         ),
                         child: Center(
                           child: Padding(
                             padding: const EdgeInsets.only(left:15.0),
                             child: dropDown(selectedItem: "L",),
                           )
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(5.0),
                       child: Container(
                         width: 50.w,
                         height: 50.h,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(10),
                         ),
                         child: Center(
                           child:Padding(
                             padding: const EdgeInsets.only(left:15.0),
                             child: dropDown(selectedItem: "L",),
                           )
                         ),
                       ),
                     ),
                   ],
                 )
                ],
              ),

              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Hot Work/Fire:",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),

               SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Slips, trips and falls Access:",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),


               SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Cuts and abrasions to hands, Eyes, Feet:",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),

              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Falls from height:",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Slips, Trips and Falls on the level:",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Falling objects / Protruding Objects",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Collapse:",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Manual handling:",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Electricity:",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Access / Egress: ",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Adverse weather conditions: ",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child:Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: dropDown(selectedItem: "L",),
                              )
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),


              SizedBox(
                height: 30.h,
              ),
              // Divider(thickness: 1,color: Colors.black,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "People Exposed",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        fontSize: 21.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 78.0),
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),

              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Operative primarily, people working in the vicinity, public",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Action/Control to\n Reduce Risk",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        fontSize: 21.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 78.0),
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),

              Text(
                "110v power or battery operated tools to be used Sites",
                style: GoogleFonts.dmSans(
                    fontSize: 19.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),
              SizedBox(
                height: 10.h,
              ),

              Text(
                "Materials to be moved by mechanical means whenever possible to work area, heavy items to be carried by operatives working in pairs",
                style: GoogleFonts.dmSans(
                    fontSize: 19.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),
              SizedBox(
                height: 10.h,
              ),

              Text(
                "Fire extinguisher to be available when carrying out hot work. Fire blankets to be made available where necessary.",
                style: GoogleFonts.dmSans(
                    fontSize: 19.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Equipment to be set up in a clear area away from access routes and fitted with the required guards etc.",
                style: GoogleFonts.dmSans(
                    fontSize: 19.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Trained personnel – use of PPE",
                style: GoogleFonts.dmSans(
                    fontSize: 19.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 30.h,
              ),

              InkWell(
                onTap: () {
                   Navigator.push(context,
                   MaterialPageRoute(builder: (context) => PPEForm2(role: role,)));
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
