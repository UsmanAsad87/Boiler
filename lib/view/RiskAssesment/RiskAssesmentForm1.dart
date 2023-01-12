import 'package:boiler/colors/common.dart';
import 'package:boiler/model/completeBoilerTextField.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/InstallMenuOfAshp.dart';
import 'package:boiler/view/RiskAssesment/RiskAssesment1Controller.dart';
import 'package:boiler/view/installMenuOfBoiler/installMenuOfBoiler.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../Constants/constants.dart';
import '../../Manual handling dropdown/dropDown.dart';

class RiskAssesmentForm1 extends StatefulWidget {
  int role;
  var ds;
  RiskAssesmentForm1({required this.role, this.ds});

  @override
  State<RiskAssesmentForm1> createState() => _RiskAssesmentForm1State();
}

class _RiskAssesmentForm1State extends State<RiskAssesmentForm1> {
  TextEditingController _date = TextEditingController();

  final formkey = GlobalKey<FormState>();
  RiskAssesmen1tControoller _controoler = new RiskAssesmen1tControoller();

  @override
  Widget build(BuildContext context) {
    print(widget.role);
    print("booo ki value...............${isInstall}");
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: formkey,
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
                  //keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.propertyadresscontroller,
                  //  keyboardType: TextInputType.text,
                  //  readOnly: false,
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
                  controller: _date,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                  ),
                  keyboardType: TextInputType.text,
                  readOnly: false,
                  onTap: () async {
                    DateTime? pickeddate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2050));
                    if (pickeddate != null) {
                      setState(() {
                        _date.text =
                            DateFormat("yyyy-mm-dd").format(pickeddate);
                      });
                    }
                  },
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
                    //keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'name Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.dateassesmentcontroller,
                    //  keyboardType: TextInputType.text,
                    //   readOnly: false,
                    keyboardType: TextInputType.text,
                    readOnly: false),
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
                          child: Text(
                            "Severity",
                            style: TextStyle(fontSize: 10),
                          ),
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
                          child: Text(
                            "Chance",
                            style: TextStyle(fontSize: 10),
                          ),
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
                          child: Text(
                            "Risk",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                    ),
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
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
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
                              padding: const EdgeInsets.only(left: 15.0),
                              child: dropDown(
                                selectedItem: "L",
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                InkWell(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      var uid = FirebaseAuth.instance.currentUser!.uid;
                      FirebaseFirestore.instance
                          .collection('userInfo')
                          .doc(uid)
                          .collection('riskAssesment')
                          .doc(widget.ds)
                          .set({
                        'propertyAddress':
                            _controoler.propertyadresscontroller.text,
                        'dateOfAssesment': _date.text,
                        'assesmentBy': _controoler.dateassesmentcontroller.text,
                        'ds': widget.ds,
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => widget.role == 1
                                  ? InstallMenuOfBoiler(
                                      ds: widget.ds,
                                    )
                                  : InstallMenuOfAshp()));
                    } else {
                      common.toastShow("Please Fill All Fields");
                    }
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => widget.role == 1
                    //             ? InstallMenuOfBoiler()
                    //             : InstallMenuOfAshp()));
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
      ),
    );
  }
}
