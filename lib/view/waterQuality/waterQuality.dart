import 'package:boiler/colors/common.dart';
import 'package:boiler/view/CondensateDisposal/condensateDisposal.dart';
import 'package:boiler/view/GlobalData.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../boilerdetailcontroller.dart';
import '../../model/completeBoilerTextField.dart';

class WaterQuality extends StatefulWidget {
  const WaterQuality({Key? key}) : super(key: key);

  @override
  State<WaterQuality> createState() => _WaterQualityState();
}

class _WaterQualityState extends State<WaterQuality> {
  var opt1 = '';
  var opt2 = '';
  var opt3 = '';
  var opt4 = '';
  final formkey = GlobalKey<FormState>();
  boilerdetailcontroller _controoler = new boilerdetailcontroller();
  bool isYes = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFEFEF),
        // appBar: AppBar(
        //   elevation: 0.0,
        //   backgroundColor: Color(0xffEFEFEF),
        //   leading: Icon(
        //     Icons.keyboard_backspace_outlined,
        //     color: Colors.black,
        //     size: 30.sp,
        //   ),
        // ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(18),
              child: Form(
                key: formkey,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
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
                    //-----------------
                    //-----------------
                    //-----------------
                    Text(
                      'Water quality',
                      style: GoogleFonts.dmSans(
                          fontSize: 27.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15.h,
                      width: MediaQuery.of(context).size.width * .47,
                      child: Divider(
                        height: 4,
                        thickness: 1.3,
                        color: Colors.black,
                      ),
                    ),
                    //-----------------
                    //-----------------
                    //-----------------
                    Padding(
                      padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                      child: Text(
                        'The system has been flushed, cleaned and a suitable inhibitor applied upon final fill, in accordance with BS7593 and boiler manufacturers’ instructions',
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                            color: Colors.black),
                      ),
                    ),
                    //-----------------
                    //-----------------
                    //-----------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Spacer(
                          flex: 2,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isYes = true;
                            });
                          },
                          child: CustomButton(
                            textData: 'Yes',
                            height: 42,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        InkWell(
                          onTap: () {},
                          child: CustomButton(
                            textData: 'No',
                            height: 42,
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                    //-----------------
                    //-----------------
                    //-----------------
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, bottom: 5.h),
                      child: Question(text: 'What system cleaner was used?'),
                    ),
                    //-----------------
                    //-----------------
                    //-----------------
                    CustomTextFormFieldWithPrefix3(
                      hintText: 'Brand',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.whatsystemcleanerbrand,
                      // Mycomponents.useremail=_controoler.emailcontroller.text;

                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),
                    SizedBox(
                      height: 22,
                    ),

                    CustomTextFormFieldWithPrefix3(
                      hintText: 'Product',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.whatsystemcleanerproduct,
                      // Mycomponents.useremail=_controoler.emailcontroller.text;

                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),
                    //-----------------
                    //-----------------
                    //-----------------
                    Padding(
                      padding: EdgeInsets.only(top: 25.h, bottom: 5.h),
                      child: Question(text: 'What inhibitor was used?'),
                    ),
                    //-----------------
                    //-----------------
                    //-----------------
                    CustomTextFormFieldWithPrefix3(
                      hintText: 'Product',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.whatinhibitorbrand,
                      // Mycomponents.useremail=_controoler.emailcontroller.text;

                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    CustomTextFormFieldWithPrefix3(
                      hintText: 'Product',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.whatinhibitorproduct,
                      // Mycomponents.useremail=_controoler.emailcontroller.text;

                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),

                    //-----------------
                    //-----------------
                    //-----------------
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TitleText(
                        textData: 'Primary water system filter',
                      ),
                    ),
                    // Container(
                    //   alignment: Alignment.centerLeft,
                    //   child: Padding(
                    //     padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
                    //     child: Text(
                    //       'Primary water system filter',
                    //       style: GoogleFonts.dmSans(
                    //           fontWeight: FontWeight.w500, fontSize: 17.sp),
                    //     ),
                    //   ),
                    // ),
                    //-----------------
                    //-----------------
                    //-----------------
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              opt1 = 'Pre-existing';
                            });
                          },
                          child: Container(
                              height: 45.h,
                              width: 347.w,
                              decoration: BoxDecoration(
                                  color: opt1 == 'Pre-existing'
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Text(
                                    "Pre-existing",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                        color: opt1 == 'Pre-existing'
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              opt1 = 'Fitted';
                            });
                          },
                          child: Container(
                              height: 45.h,
                              width: 347.w,
                              decoration: BoxDecoration(
                                  color: opt1 == 'Fitted'
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Text(
                                    "Fitted",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                        color: opt1 == 'Fitted'
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              opt1 = 'Not Required';
                            });
                          },
                          child: Container(
                              height: 45.h,
                              width: 347.w,
                              decoration: BoxDecoration(
                                  color: opt1 == 'Not Required'
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Text(
                                    "Not Required",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                        color: opt1 == 'Not Required'
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                    //-----------------
                    //-----------------
                    //-----------------
                    Padding(
                      padding: EdgeInsets.only(top: 43.h, bottom: 25.h),
                      child: Divider(
                        height: 4,
                        thickness: 2.3,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'CENTRAL HEATING MODE measure and record (as appropriate)',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 19.sp,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      padding: EdgeInsets.only(top: 12.h, bottom: 25.h),
                      child: Divider(
                        height: 4,
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                    //------------------
                    //------------------
                    //------------------
                    Text(
                      'Gas rate (for combination boilers complete DHW mode gas rate)',
                      style: GoogleFonts.dmSans(
                          fontSize: 12.sp, fontWeight: FontWeight.w400),
                    ),
                    //------------------
                    //------------------
                    //------------------
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          textData: 'm3/hr',
                          height: 45,
                          maxWidth: true,
                          isTextCentered: false,
                          textBold: false,
                        ),
                        Padding(
                          padding: EdgeInsets.all(7),
                          child: Text(
                            'OR',
                            style: GoogleFonts.dmSans(
                                fontSize: 18.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                        CustomButton(
                          textData: 'ft3/hr',
                          height: 45,
                          maxWidth: true,
                          isTextCentered: false,
                          textBold: false,
                        ),
                      ],
                    ),
                    //------------------
                    //------------------
                    //------------------
                    Padding(
                      padding: EdgeInsets.only(top: 25.h, bottom: 5.h),
                      child: Question(
                          text:
                              'Central heating output left at factory settings?'),
                    ),
                    //------------------
                    //------------------
                    //------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomButton(
                          textData: 'Yes',
                          height: 33,
                          textBold: false,
                        ),
                        InkWell(
                          onTap: () {},
                          child: CustomButton(
                            textData: 'No',
                            height: 33,
                            textBold: false,
                          ),
                        ),
                      ],
                    ),
                    //------------------
                    //------------------
                    //------------------
                    Padding(
                      padding: EdgeInsets.only(top: 25.h, bottom: 5.h),
                      child: Question(
                          text:
                              'If no, what is the maximum central heating output selected?'),
                    ),
                    CustomTextFormFieldWithPrefix3(
                      hintText: 'KW',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.ifnowhatismaimumKW,
                      // Mycomponents.useremail=_controoler.emailcontroller.text;

                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),

                    //------------------
                    //------------------
                    //------------------
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TitleText(
                        textData: 'Dynamic gas inlet pressure',
                      ),
                    ),
                    CustomTextFormFieldWithPrefix3(
                      hintText: 'mbar',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.dynamicgasinitmbar,
                      // Mycomponents.useremail=_controoler.emailcontroller.text;

                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),

                    SizedBox(
                      height: 3.h,
                    ),
                    //------------------
                    //------------------
                    //------------------
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TitleText(
                        textData: 'Central heating flow temperature',
                      ),
                    ),
                    CustomTextFormFieldWithPrefix3(
                      hintText: '°C',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.centralheatingflowtem,
                      // Mycomponents.useremail=_controoler.emailcontroller.text;

                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),

                    SizedBox(
                      height: 3.h,
                    ),
                    //------------------
                    //------------------
                    //------------------
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TitleText(
                        textData: 'Central heating return temperature',
                      ),
                    ),
                    CustomTextFormFieldWithPrefix3(
                      hintText: '°C',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.centralheatingreeturntem,
                      // Mycomponents.useremail=_controoler.emailcontroller.text;

                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),

                    SizedBox(
                      height: 3.h,
                    ),
                    //------------------
                    //------------------
                    //------------------
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TitleText(
                        textData: 'System correctly balanced/rebalanced',
                      ),
                    ),
                    CustomTextFormFieldWithPrefix3(
                      hintText: 'Yes',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.systemcorectlybalanceed,
                      // Mycomponents.useremail=_controoler.emailcontroller.text;

                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),

                    SizedBox(
                      height: 3.h,
                    ),
                    //------------------
                    //------------------
                    //------------------
                    //------------------

                    Padding(
                      padding: EdgeInsets.only(top: 43.h, bottom: 25.h),
                      child: Divider(
                        height: 4,
                        thickness: 2.3,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'Combinations Boiler Only',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 19.sp,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      padding: EdgeInsets.only(top: 12.h, bottom: 25.h),
                      child: Divider(
                        height: 3,
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                    //------------------
                    //------------------
                    //------------------
                    Padding(
                      padding: EdgeInsets.only(top: 25.h, bottom: 5.h),
                      child: Question(
                          text:
                              'Is the installation in a hard water area (above 200ppm)?'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomButton(
                          textData: 'Yes',
                          height: 33,
                          textBold: false,
                        ),
                        CustomButton(
                          textData: 'No',
                          height: 33,
                          textBold: false,
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TitleText(
                        textData: 'Water scale reducer/softener',
                      ),
                    ),
                    //------------------
                    //------------------
                    //------------------
                    //------------------
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              opt2 = 'Pre-existing';
                            });
                          },
                          child: Container(
                              height: 45.h,
                              width: 347.w,
                              decoration: BoxDecoration(
                                  color: opt2 == 'Pre-existing'
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Text(
                                    "Pre-existing",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                        color: opt2 == 'Pre-existing'
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              opt2 = 'Fitted';
                            });
                          },
                          child: Container(
                              height: 45.h,
                              width: 347.w,
                              decoration: BoxDecoration(
                                  color: opt2 == 'Fitted'
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Text(
                                    "Fitted",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                        color: opt2 == 'Fitted'
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              opt2 = 'Not Required';
                            });
                          },
                          child: Container(
                              height: 45.h,
                              width: 347.w,
                              decoration: BoxDecoration(
                                  color: opt2 == 'Not Required'
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Text(
                                    "Not Required",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                        color: opt2 == 'Not Required'
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                    //-----------------
                    //-----------------
                    //-----------------
                    Padding(
                      padding: EdgeInsets.only(top: 25.h, bottom: 5.h),
                      child: Question(
                          text:
                              'What type of scale reducer/softener has been fitted?'),
                    ),
                    //-----------------
                    //-----------------
                    //-----------------
                    CustomTextFormFieldWithPrefix3(
                      hintText: 'Brand',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.whattypeofscalereducerbrand,
                      // Mycomponents.useremail=_controoler.emailcontroller.text;

                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    CustomTextFormFieldWithPrefix3(
                      hintText: 'Product',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.whattypeofscaleproduct,
                      // Mycomponents.useremail=_controoler.emailcontroller.text;

                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),

                    //-----------------
                    //-----------------
                    //-----------------
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TitleText(
                        textData: 'Water meter fitted?',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomButton(
                          textData: 'Yes',
                          height: 33,
                          textBold: false,
                        ),
                        CustomButton(
                          textData: 'No',
                          height: 33,
                          textBold: false,
                        ),
                      ],
                    ),
                    //---------------
                    //---------------
                    //---------------
                    //---------------

                    Align(
                      alignment: Alignment.centerLeft,
                      child: TitleText(
                        textData: 'If yes- DHW expansion vessel',
                      ),
                    ),
                    //------------------
                    //------------------
                    //------------------
                    //------------------
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              opt3 = 'Pre-existing';
                            });
                          },
                          child: Container(
                              height: 45.h,
                              width: 347.w,
                              decoration: BoxDecoration(
                                  color: opt3 == 'Pre-existing'
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Text(
                                    "Pre-existing",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                        color: opt3 == 'Pre-existing'
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              opt3 = 'Fitted';
                            });
                          },
                          child: Container(
                              height: 45.h,
                              width: 347.w,
                              decoration: BoxDecoration(
                                  color: opt3 == 'Fitted'
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Text(
                                    "Fitted",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                        color: opt3 == 'Fitted'
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              opt3 = 'Not Required';
                            });
                          },
                          child: Container(
                              height: 45.h,
                              width: 347.w,
                              decoration: BoxDecoration(
                                  color: opt3 == 'Not Required'
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Text(
                                    "Not Required",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                        color: opt3 == 'Not Required'
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    //-----------------
                    //-----------------
                    //-----------------
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TitleText(
                        textData: 'Pressure reducing valve',
                      ),
                    ),
                    //------------------
                    //------------------
                    //------------------
                    //------------------
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              opt4 = 'Pre-existing';
                            });
                          },
                          child: Container(
                              height: 45.h,
                              width: 347.w,
                              decoration: BoxDecoration(
                                  color: opt4 == 'Pre-existing'
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Text(
                                    "Pre-existing",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                        color: opt4 == 'Pre-existing'
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              opt4 = 'Fitted';
                            });
                          },
                          child: Container(
                              height: 45.h,
                              width: 347.w,
                              decoration: BoxDecoration(
                                  color: opt4 == 'Fitted'
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Text(
                                    "Fitted",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                        color: opt4 == 'Fitted'
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              opt4 = 'Not Required';
                            });
                          },
                          child: Container(
                              height: 45.h,
                              width: 347.w,
                              decoration: BoxDecoration(
                                  color: opt4 == 'Not Required'
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Text(
                                    "Not Required",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                        color: opt4 == 'Not Required'
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                    //-----------------
                    //-----------------
                    //-----------------

                    //------------------------------- New Section
                    Padding(
                      padding: EdgeInsets.only(top: 43.h, bottom: 25.h),
                      child: Divider(
                        height: 4,
                        thickness: 2.3,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'Domestic Hot Water Mode Measure and record',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 19.sp,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      padding: EdgeInsets.only(top: 12.h, bottom: 25.h),
                      child: Divider(
                        height: 4,
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                    //------------------
                    //------------------
                    //------------------
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TitleText(
                        textData: 'Gas rate',
                      ),
                    ),
                    //------------------
                    //------------------
                    //------------------
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          textData: 'm3/hr',
                          height: 45,
                          maxWidth: true,
                          isTextCentered: false,
                          textBold: false,
                        ),
                        Padding(
                          padding: EdgeInsets.all(7),
                          child: Text(
                            'OR',
                            style: GoogleFonts.dmSans(
                                fontSize: 18.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                        CustomButton(
                          textData: 'ft3/hr',
                          height: 45,
                          maxWidth: true,
                          isTextCentered: false,
                          textBold: false,
                        ),
                      ],
                    ),
                    //------------------
                    //------------------
                    //------------------
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TitleText(
                        textData: 'Dynamic gas inlet pressure at maximum rate',
                      ),
                    ),
                    //------------------
                    //------------------
                    //------------------
                    CustomTextFormFieldWithPrefix3(
                      hintText: 'mbar',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller:
                          _controoler.dynamicgasinitpressureatmaximummbar,
                      // Mycomponents.useremail=_controoler.emailcontroller.text;

                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),

                    //------------------
                    //------------------
                    //------------------
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TitleText(
                        textData: 'Cold water inlet temperature',
                      ),
                    ),
                    CustomTextFormFieldWithPrefix3(
                      hintText: 'mbar',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.coldwaterinittempmbar,
                      // Mycomponents.useremail=_controoler.emailcontroller.text;

                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),

                    SizedBox(
                      height: 3.h,
                    ),
                    //------------------
                    //------------------
                    //------------------
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TitleText(
                        textData: 'Hot water has been checked at all outlets',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: CustomButton(
                            textData: 'Yes',
                            height: 33,
                            textBold: false,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: CustomButton(
                            textData: 'No',
                            height: 33,
                            textBold: false,
                          ),
                        ),
                      ],
                    ),
                    //------------------
                    //------------------
                    //------------------
                    Padding(
                      padding: EdgeInsets.only(top: 12.h),
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixText: '°C',
                          hintText: 'Temperature',
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' Cannot Be Empty';
                          }
                          return null;
                        },
                        controller:
                            _controoler.hotwaterhasbeencheckedtemprature,
                        // Mycomponents.useremail=_controoler.emailcontroller.text;

                        //  keyboardType: TextInputType.text,
                        readOnly: false,
                      ),
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                      onTap: () {
                        if (formkey.currentState!.validate()) {
                          BoilerCustomerDetail.systemcleanerbrand =
                              _controoler.whatsystemcleanerbrand.text;
                          BoilerCustomerDetail.systemcleanerproduct =
                              _controoler.whatsystemcleanerproduct.text;
                          BoilerCustomerDetail.inhibatorusedbrand =
                              _controoler.whatinhibitorbrand.text;
                          BoilerCustomerDetail.centralheatingoutput =
                              _controoler.ifnowhatismaimumKW.text;
                          BoilerCustomerDetail.dynamicgasinletmbar =
                              _controoler.dynamicgasinitmbar.text;
                          BoilerCustomerDetail.centralheatingflowtem =
                              _controoler.centralheatingflowtem.text;
                          BoilerCustomerDetail.centralheatingreturntemp =
                              _controoler.centralheatingreeturntem.text;
                          BoilerCustomerDetail.systemcorectlybalanced =
                              _controoler.systemcorectlybalanceed.text;
                          BoilerCustomerDetail.typeofscalereduverbrand =
                              _controoler.whattypeofscalereducerbrand.text;
                          BoilerCustomerDetail.typeofscalereduverproduct =
                              _controoler.whattypeofscaleproduct.text;
                          BoilerCustomerDetail.dynamicgasinletmbar =
                              _controoler.dynamicgasinitmbar.text;
                          BoilerCustomerDetail.coldwaterinittempmbar =
                              _controoler.coldwaterinittempmbar.text;
                          BoilerCustomerDetail.hotwaterischeckedtemprature =
                              _controoler.hotwaterhasbeencheckedtemprature.text;
                          var ds = DateTime.now().toString();
                          var uid = FirebaseAuth.instance.currentUser!.uid;
                          FirebaseFirestore.instance
                              .collection('userInfo')
                              .doc(uid)
                              .collection('waterQuality')
                              .doc(ds)
                              .set({
                            'cleanerBrand':
                                BoilerCustomerDetail.systemcleanerbrand,
                            'cleanerProduct':
                                BoilerCustomerDetail.systemcleanerproduct,
                            'inhibitorBrand':
                                BoilerCustomerDetail.inhibatorusedbrand,
                            'inhibitorProduct':
                                BoilerCustomerDetail.CommisionedBy,
                            'kw': BoilerCustomerDetail.Companyname,
                            'mbar': BoilerCustomerDetail.CompanyEmail2,
                            'heatingflowTemp':
                                BoilerCustomerDetail.companyAddress,
                            'heatingReturnTemp':
                                BoilerCustomerDetail.telephoneNumber,
                            'systemCorrectlyRebalanced':
                                BoilerCustomerDetail.systemcorectlybalanced,
                            'scaleBrand':
                                BoilerCustomerDetail.typeofscalereduverproduct,
                            'maxInletPressureRate':
                                BoilerCustomerDetail.dynamicgasinletmbar,
                            'InletWaterTemp':
                                BoilerCustomerDetail.coldwaterinittempmbar,
                            'temprature': BoilerCustomerDetail
                                .hotwaterischeckedtemprature,
                            'opt1': opt1,
                            'opt2': opt2,
                            'opt3': opt3,
                            'opt4': opt4,
                          });

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CondensateDisposal()));
                          print(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");
                        } else {
                          common.toastShow("Please Fill All Fields");
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * .6,
                        height: 46.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff42FF55),
                        ),
                        child: Text(
                          'Next',
                          style: GoogleFonts.dmSans(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class TitleText extends StatelessWidget {
  TitleText({Key? key, required this.textData}) : super(key: key);
  String textData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: Text(
        textData,
        style: GoogleFonts.dmSans(
            fontSize: 18.sp, fontWeight: FontWeight.w500, color: Colors.black),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({Key? key, required this.hintText}) : super(key: key);
  String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText.toString(),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      this.height = 42,
      this.isTextCentered = true,
      this.maxWidth = false,
      this.textBold = true,
      required this.textData})
      : super(key: key);
  int height;
  String textData;
  bool maxWidth;
  bool isTextCentered;
  bool textBold;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
      padding: isTextCentered ? EdgeInsets.zero : EdgeInsets.only(left: 15.w),
      alignment: isTextCentered ? Alignment.center : Alignment.centerLeft,
      height: height.h,
      width: maxWidth ? MediaQuery.of(context).size.width : 129.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Text(
        textData.toString(),
        style: GoogleFonts.dmSans(
            fontSize: 15.sp,
            fontWeight: textBold ? FontWeight.w500 : FontWeight.normal,
            color: Colors.black),
      ),
    );
  }
}

class Question extends StatelessWidget {
  Question({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text.toString(),
        style: GoogleFonts.dmSans(
          fontSize: 16.sp,
          color: Colors.black,
        ),
      ),
    );
  }
}
