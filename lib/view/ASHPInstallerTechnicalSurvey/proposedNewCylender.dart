import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/existingRadiatorAndLocation.dart';
import 'package:boiler/view/GlobalData.dart';
import 'package:boiler/view/ServeyASHPController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:boiler/colors/common.dart';

class ProposedNewCylender extends StatefulWidget {
  const ProposedNewCylender({Key? key}) : super(key: key);

  @override
  State<ProposedNewCylender> createState() => _ProposedNewCylenderState();
}

class _ProposedNewCylenderState extends State<ProposedNewCylender> {
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
                  "PROPOSED NEW \n CYLINDER",
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
                        "Cylinder Make / Model / Size:",
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
                  controller: _controoler.cylinderMakeController,),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Cylinder Location:",
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
                  controller: _controoler.cylinderLocationController,),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Lime scale reducer required:",
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
                  controller: _controoler.limeScaleController,),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Do we need to build a base:",
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
                  controller: _controoler.doWeController,),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Base constructed with:",
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
                  controller: _controoler.baseConStructedController,),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Who is building the base:",
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
                  controller: _controoler.whoIsController,),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Where do we run the blow off D2/D1:",
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
                  controller: _controoler.whereDoController,),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Pipes need lagging / size:",
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
                  controller: _controoler.pipesController,),
                SizedBox(
                  height: 10.h,
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
                  controller: _controoler.comments5Controller,
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
                      MyComponent.cylinderMakeController = _controoler.cylinderMakeController.text;
                      MyComponent.cylinderLocationcontroller = _controoler.cylinderLocationcontroller.text;
                      MyComponent.limeScaleController = _controoler.limeScaleController.text;
                      MyComponent.doWeController = _controoler.doWeController.text;
                      MyComponent.baseConStructedController = _controoler.baseConStructedController.text;
                      MyComponent.whoIsController = _controoler.whoIsController.text;
                      MyComponent.whereDoController = _controoler.whereDoController.text;
                      MyComponent.pipesController = _controoler.pipesController.text;
                      MyComponent.comments5Controller = _controoler.comments5Controller.text;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExistingRadiatorAndLocation()));}
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
