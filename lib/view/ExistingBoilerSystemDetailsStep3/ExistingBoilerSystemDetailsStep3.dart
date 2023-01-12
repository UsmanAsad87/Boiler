import 'package:boiler/colors/common.dart';
import 'package:boiler/view/surveycontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/installMenuOfBoiler.dart';
import '../ElectricalWorks/ElectricalWorks.dart';
import '../GlobalData.dart';

class ExistingBoilerSystemDetailsStep3 extends StatefulWidget {
  const ExistingBoilerSystemDetailsStep3({Key? key}) : super(key: key);

  @override
  State<ExistingBoilerSystemDetailsStep3> createState() => _ExistingBoilerSystemDetailsStep3State();
}

class _ExistingBoilerSystemDetailsStep3State extends State<ExistingBoilerSystemDetailsStep3> {
  
  final formkey = GlobalKey<FormState>();
  surveycontroller _controoler = new surveycontroller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFEFEF),
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
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
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 20.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/Arrow 3.png"),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "New radiator & Trv’s & Lock shields",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: TextFormField(validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.newradiatortv_lockshiledcontroller,
                      keyboardType: TextInputType.text,
                      readOnly: false,
                     // readOnly: false, keyboardType: TextInputType.text
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Gas:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: TextFormField(
                   validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.gascontroller,
                      keyboardType: TextInputType.text,
                      readOnly: false,
                     // readOnly: false, keyboardType: TextInputType.text
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "GFlow and Return:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: TextFormField(
                   validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.gfflowandreturncontroller,
                      keyboardType: TextInputType.text,
                      readOnly: false,
                     // readOnly: false, keyboardType: TextInputType.text
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
                  height: 10.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Hot and Cold:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: TextFormField(
                   validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.hotandcoldcontroller,
                      keyboardType: TextInputType.text,
                      readOnly: false,
                     // readOnly: false, keyboardType: TextInputType.text
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
                  height: 10.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Condensate:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: TextFormField(validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.condensatecontroller,
                      keyboardType: TextInputType.text,
                      readOnly: false,
                     // readOnly: false, keyboardType: TextInputType.text
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
                  height: 10.h,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Access:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.accesscontroller,
                      keyboardType: TextInputType.text,
                      readOnly: false,
                     // readOnly: false, keyboardType: TextInputType.text
                     ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Ladders:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.ladderscontroller,
                      keyboardType: TextInputType.text,
                      readOnly: false,
                     // readOnly: false, keyboardType: TextInputType.text
                     ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Additional Notes:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: TextFormField(validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.additionalnotescontroller,
                      keyboardType: TextInputType.text,
                      readOnly: false, maxLines: 6,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        )),
                     // readOnly: false, keyboardType: TextInputType.text
                     ),
                   
                  
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 30.h,
                ),
                InkWell(
                  onTap: () {if (formkey.currentState!.validate()) {
                        print(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");
                        
                                Mycomponents.newradiatortv_lockshiled=_controoler.newradiatortv_lockshiledcontroller.text;
                                
                                Mycomponents.gas=_controoler.gascontroller.text;
                                Mycomponents.gfflowandreturn=_controoler.gfflowandreturncontroller.text;
                                Mycomponents.hotaandcold=_controoler.hotandcoldcontroller.text;
                                Mycomponents.condesate=_controoler.condensatecontroller.text;
                                Mycomponents.access=_controoler.accesscontroller.text;
                                Mycomponents.ladders=_controoler.ladderscontroller.text;
                                Mycomponents.additionalnotes=_controoler.additionalnotescontroller.text;
                        // _controoler.signin();
                                         Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ElectricalWorks()));
                      } else {
                        common.toastShow("Please Fill All Fields");
                      }
          
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
        ));
  }
}
