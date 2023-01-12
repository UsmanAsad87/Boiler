import 'package:boiler/view/ASHPInstallerTechnicalSurvey/RequiredPicture.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/extraInformationAndMeasurement.dart';
import 'package:boiler/view/GlobalData.dart';
import 'package:boiler/view/ServeyASHPController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:boiler/colors/common.dart';
import '../../model/installMenuOfBoiler.dart';

class ElectricalSystem extends StatefulWidget {
  const ElectricalSystem({Key? key}) : super(key: key);

  @override
  State<ElectricalSystem> createState() => _ElectricalSystemState();
}

class _ElectricalSystemState extends State<ElectricalSystem> {
  final formkey = GlobalKey<FormState>();
  ASHPsurveycontroller _controoler = new ASHPsurveycontroller();
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
                Center(
                    child: Text(
                  "ELECTRICAL SYSTEM",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 27.sp, fontWeight: FontWeight.w500),
                )),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Container(
                      width: 210.w,
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
                        "Main Fuse Board Location:",
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
                    readOnly: false,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.mainFuseController,),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Board Type/Menue:",
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
                    readOnly: false,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.boardTypeController,),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Number of Spare Ways:",
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
                    readOnly: false,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.numberOfSpareController,),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Type of Fuse / MCB Qty:",
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
                    readOnly: false,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.typeofFuseController,),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Distance to ASHP:",
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
                    readOnly: false,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.distanceToASHPController,),
                // SizedBox(height: 15.h,),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Standard Materials:",
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
                    readOnly: false,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.standardMaterialsController,
                    maxLines: 6,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        )),
                  ),
                ),
          
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Comments:",
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
                    readOnly: false,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.comments7Controller,
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
                  height: 30.h,
                ),
          
                SizedBox(
                  height: 30.h,
                ),
          
                InkWell(
                  onTap: () {
                    if(formkey.currentState!.validate()){
                        MyComponent.mainFuseController = _controoler.mainFuseController.text;
                        MyComponent.boardTypeController = _controoler.boardTypeController.text;
                        MyComponent.numberOfSpareController = _controoler.numberOfSpareController.text;
                        MyComponent.typeofFuseController = _controoler.typeofFuseController.text;
                        MyComponent.distanceToASHPController = _controoler.distanceToASHPController.text;
                        MyComponent.standardMaterialsController = _controoler.standardMaterialsController.text;
                        MyComponent.comments7Controller = _controoler.comments7Controller.text;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExtaInformationAndMeasurement()));}
                            else{
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
