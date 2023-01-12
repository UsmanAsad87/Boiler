import 'dart:io';

import 'package:boiler/Constants/constants.dart';
import 'package:boiler/boilerdetailcontroller.dart';
import 'package:boiler/colors/common.dart';
import 'package:boiler/model/completeBoilerTextField.dart';
import 'package:boiler/view/boilerCmpleteStandardBenchmarkpicture.dart';
import 'package:boiler/view/waterQuality/waterQuality.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../GlobalData.dart';

class CompleteBoilerBenchMark extends StatefulWidget {
  @override
  State<CompleteBoilerBenchMark> createState() =>
      _CompleteBoilerBenchMarkState();
}

class _CompleteBoilerBenchMarkState extends State<CompleteBoilerBenchMark> {
  final formkey = GlobalKey<FormState>();
  var zoneValves = '';
  var boilerPlus = '';
  boilerdetailcontroller _controoler = new boilerdetailcontroller();
  final ImagePicker _picker = ImagePicker();
  Map? data;
  File? _image;
  postdata(String imgurl) async {
    setState(() {
      print("1");
    });
    DateTime now = DateTime.now();
//String c=e.DateTime.now();
    String convertedDateTime =
        "${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}-${now.minute.toString().padLeft(2, '0')}-${now.microsecondsSinceEpoch.toString().padLeft(2, '0')}";
    print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
    print("e" + DateTime.now().toString());
    await FirebaseFirestore.instance
        .collection('post')
        .doc("e" + " " + DateTime.now().toString())
        .set({
      'name': "e", // John Doe
      // 'contact': "c", // Stokes and Sons
      'time': convertedDateTime, // 42
      'images': imgurl,
    });
    setState(() {
      Fluttertoast.showToast(
          textColor: Color.fromARGB(255, 2, 6, 2),
          backgroundColor: Colors.grey,
          msg: "Data post succesfully", // message
          toastLength: Toast.LENGTH_SHORT, // length
          gravity: ToastGravity.CENTER, // location
          timeInSecForIosWeb: 3 // duration
          );
      //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //   content: Text("data post succesfully"),backgroundColor: Colors.amber,
      // ));
    });
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BoilerCompleteStandardBenchMarkPicture()));
    //ab=null;
  }

  Future uploadimg(File _image) async {
    // setState(() {print("0");
    // });
    String url;
    String imgid = DateTime.now().microsecondsSinceEpoch.toString();
    Reference reference = await FirebaseStorage.instance
        .ref()
        .child('images')
        .child('profile$imgid');
    await reference.putFile(_image);
    url = await reference.getDownloadURL();
    postdata(url);
    // setState(() {
    //   isLoad == false;
    // });
    return url;
  }

  // Pick an image

  // Capture a photo
  // Pick a video

  TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  "Complete Boiler",
                  style: GoogleFonts.dmSans(
                      fontSize: 27.sp, fontWeight: FontWeight.w500),
                )),
                Center(
                    child: Text(
                  "Benchmark",
                  style: GoogleFonts.dmSans(
                      fontSize: 27.sp, fontWeight: FontWeight.w500),
                )),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 63.h,
                  width: 339.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                show = 0;
                              });
                            },
                            child: Text(
                              "Upload Pic",
                              style: show == 0
                                  ? GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.green)
                                  : GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                            )),
                        VerticalDivider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              show = 1;
                            });
                          },
                          child: Text(
                            "Fill Form",
                            style: show == 1
                                ? GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.green)
                                : GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Visibility(
                  visible: show == 0,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      InkWell(
                        onTap: () {
                          dialog(context);
                        },
                        child: Center(
                          child: Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: _image != null
                                ? ClipRect(
                                    clipBehavior: Clip.hardEdge,
                                    child: Image.file(
                                      _image!.absolute,
                                      height: 100,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.fill,
                                    ),
                                  )
                                : Container(
                                    width: 100,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child:
                                        Center(child: Text("Upload Picture"))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      InkWell(
                        onTap: () {
                          if (_image != null) {
                            uploadimg(_image!);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        BoilerCompleteStandardBenchMarkPicture()));
                          } else {
                            common.toastShow('Upload profile picture');
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
                Visibility(
                  visible: show == 1,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Address:",
                            style: GoogleFonts.dmSans(
                                fontSize: 20.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextFormFieldWithPrefix3(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' Cannot Be Empty';
                          }
                          return null;
                        },
                        controller: _controoler.Address,
                        // Mycomponents.useremail=_controoler.emailcontroller.text;

                        //  keyboardType: TextInputType.text,
                        readOnly: false,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Boiler Make and Model:",
                            style: GoogleFonts.dmSans(
                                fontSize: 20.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextFormFieldWithPrefix3(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' Cannot Be Empty';
                          }
                          return null;
                        },
                        controller: _controoler.boilermakeandmodel,
                        // Mycomponents.useremail=_controoler.emailcontroller.text;

                        //  keyboardType: TextInputType.text,
                        readOnly: false,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Boiler Serial No:",
                            style: GoogleFonts.dmSans(
                                fontSize: 20.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextFormFieldWithPrefix3(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' Cannot Be Empty';
                          }
                          return null;
                        },
                        controller: _controoler.boilerserialnum,
                        // Mycomponents.useremail=_controoler.emailcontroller.text;

                        //  keyboardType: TextInputType.text,
                        readOnly: false,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Commisioned by (PRINT NAME):",
                            style: GoogleFonts.dmSans(
                                fontSize: 20.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextFormFieldWithPrefix3(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' Cannot Be Empty';
                          }
                          return null;
                        },
                        controller: _controoler.commisionedby,
                        // Mycomponents.useremail=_controoler.emailcontroller.text;

                        //  keyboardType: TextInputType.text,
                        readOnly: false,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Company Name:",
                            style: GoogleFonts.dmSans(
                                fontSize: 20.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextFormFieldWithPrefix3(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' Cannot Be Empty';
                          }
                          return null;
                        },
                        controller: _controoler.companyname,
                        // Mycomponents.useremail=_controoler.emailcontroller.text;

                        //  keyboardType: TextInputType.text,
                        readOnly: false,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Company Email:",
                            style: GoogleFonts.dmSans(
                                fontSize: 20.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextFormFieldWithPrefix3(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' Cannot Be Empty';
                          }
                          return null;
                        },
                        controller: _controoler.companyemail,
                        // Mycomponents.useremail=_controoler.emailcontroller.text;

                        //  keyboardType: TextInputType.text,
                        readOnly: false,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Company Address:",
                            style: GoogleFonts.dmSans(
                                fontSize: 20.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' Cannot Be Empty';
                          }
                          return null;
                        },
                        controller: _controoler.companyadress,
                        // Mycomponents.useremail=_controoler.emailcontroller.text;

                        //  keyboardType: TextInputType.text,
                        readOnly: false,
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
                            "Telephone Number:",
                            style: GoogleFonts.dmSans(
                                fontSize: 20.sp, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextFormFieldWithPrefix3(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' Cannot Be Empty';
                          }
                          return null;
                        },
                        controller: _controoler.telephonenumber,
                        // Mycomponents.useremail=_controoler.emailcontroller.text;

                        //  keyboardType: TextInputType.text,
                        readOnly: false,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Commissioning Date",
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
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1)),
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
                        height: 10.h,
                      ),
                      Text(
                        "Heating and hot water system complies with the appropriate Building Regulations?",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 46.h,
                            width: 148,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white),
                            child: Center(
                                child: Text(
                              "Yes",
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 17),
                            )),
                          ),
                          Container(
                            height: 46.h,
                            width: 148,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              "No",
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 17),
                            )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Optional: Building Regulations Notification Number (if applicable)",
                        style: GoogleFonts.dmSans(
                            fontSize: 17.sp, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextFormFieldWithPrefix3(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email Cannot Be Empty';
                          }
                          return null;
                        },
                        controller: _controoler.optionalbuildingregulations,
                        // Mycomponents.useremail=_controoler.emailcontroller.text;

                        //  keyboardType: TextInputType.text,
                        readOnly: false,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 46.h,
                            width: 148,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white),
                            child: Center(
                                child: Text(
                              "Yes",
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 17),
                            )),
                          ),
                          Container(
                            height: 46.h,
                            width: 148,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              "No",
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 17),
                            )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Column(
                          children: [
                            Text(
                              "  Boiler Plus Requirement (Tick the Appropriate Box)",
                              style: GoogleFonts.dmSans(
                                  fontSize: 25.sp, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            boilerPlus = 'Weather Compensations';
                          });
                        },
                        child: Container(
                            height: 45.h,
                            width: 347.w,
                            decoration: BoxDecoration(
                                color: boilerPlus == 'Weather Compensations'
                                    ? Colors.black
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Text(
                                "Weather Compensations",
                                style: GoogleFonts.dmSans(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w400,
                                    color: boilerPlus == 'Weather Compensations'
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            boilerPlus =
                                'Smart thermostat with automisation and optimisation';
                          });
                        },
                        child: Container(
                            height: 45.h,
                            width: 347.w,
                            decoration: BoxDecoration(
                                color: boilerPlus ==
                                        'Smart thermostat with automisation and optimisation'
                                    ? Colors.black
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: Text(
                                  "Smart thermostat with automisation and optimisation",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                      color: boilerPlus ==
                                              'Smart thermostat with automisation and optimisation'
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
                            boilerPlus =
                                'Time and temperature control to hot water';
                          });
                        },
                        child: Container(
                            height: 45.h,
                            width: 347.w,
                            decoration: BoxDecoration(
                                color: boilerPlus ==
                                        'Time and temperature control to hot water'
                                    ? Colors.black
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: Text(
                                  "Time and temperature control to hot water",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                      color: boilerPlus ==
                                              'Time and temperature control to hot water'
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
                            boilerPlus =
                                'Cylinder thermostat and programmer/timer';
                          });
                        },
                        child: Container(
                            height: 45.h,
                            width: 347.w,
                            decoration: BoxDecoration(
                                color: boilerPlus ==
                                        'Cylinder thermostat and programmer/timer'
                                    ? Colors.black
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: Text(
                                  "Cylinder thermostat and programmer/timer",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                      color: boilerPlus ==
                                              'Cylinder thermostat and programmer/timer'
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
                            boilerPlus = 'Load compensation';
                          });
                        },
                        child: Container(
                          height: 45.h,
                          width: 347.w,
                          decoration: BoxDecoration(
                              color: boilerPlus == 'Load compensation'
                                  ? Colors.black
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18.0),
                              child: Text(
                                "Load compensation",
                                style: GoogleFonts.dmSans(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w400,
                                    color: boilerPlus == 'Load compensation'
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            boilerPlus = 'Flue Gas Heat Recovery';
                          });
                        },
                        child: Container(
                            height: 45.h,
                            width: 347.w,
                            decoration: BoxDecoration(
                                color: boilerPlus == 'Flue Gas Heat Recovery'
                                    ? Colors.black
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: Text(
                                  "Flue Gas Heat Recovery",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          boilerPlus == 'Flue Gas Heat Recovery'
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
                            boilerPlus = 'Combination boiler';
                          });
                        },
                        child: Container(
                            height: 45.h,
                            width: 347.w,
                            decoration: BoxDecoration(
                                color: boilerPlus == 'Combination boiler'
                                    ? Colors.black
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: Text(
                                  "Combination boiler",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w400,
                                      color: boilerPlus == 'Combination boiler'
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Zone Valves",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            zoneValves = 'Pre-existing';
                          });
                        },
                        child: Container(
                            height: 45.h,
                            width: 347.w,
                            decoration: BoxDecoration(
                                color: zoneValves == 'Pre-existing'
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
                                      color: zoneValves == 'Pre-existing'
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
                            zoneValves = 'Fitted';
                          });
                        },
                        child: Container(
                            height: 45.h,
                            width: 347.w,
                            decoration: BoxDecoration(
                                color: zoneValves == 'Fitted'
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
                                      color: zoneValves == 'Fitted'
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
                            zoneValves = 'Not Required';
                          });
                        },
                        child: Container(
                            height: 45.h,
                            width: 347.w,
                            decoration: BoxDecoration(
                                color: zoneValves == 'Not Required'
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
                                      color: zoneValves == 'Not Required'
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      InkWell(
                        onTap: () {
                          if (formkey.currentState!.validate()) {
                            BoilerCustomerDetail.Address2 =
                                _controoler.Address.text;
                            BoilerCustomerDetail.BoilerMakeandModel =
                                _controoler.boilermakeandmodel.text;
                            BoilerCustomerDetail.BoilerSerialNo =
                                _controoler.boilerserialnum.text;
                            BoilerCustomerDetail.CommisionedBy =
                                _controoler.commisionedby.text;
                            BoilerCustomerDetail.Companyname =
                                _controoler.companyname.text;
                            BoilerCustomerDetail.CompanyEmail2 =
                                _controoler.companyemail.text;
                            BoilerCustomerDetail.companyAddress =
                                _controoler.companyadress.text;
                            BoilerCustomerDetail.telephoneNumber =
                                _controoler.telephonenumber.text;
                            BoilerCustomerDetail.commisiongDate =
                                _controoler.commisioningdate.text;
                            BoilerCustomerDetail
                                    .BuildingreregulationNotificationNumber =
                                _controoler.optionalbuildingregulations.text;
                            var ds = DateTime.now().toString();
                            var uid = FirebaseAuth.instance.currentUser!.uid;
                            FirebaseFirestore.instance
                                .collection('userInfo')
                                .doc(uid)
                                .collection('boilerBenchMark')
                                .doc(ds)
                                .set({
                              'address': BoilerCustomerDetail.Address2,
                              'boilerMakeModel':
                                  BoilerCustomerDetail.BoilerMakeandModel,
                              'boilerSerialNo':
                                  BoilerCustomerDetail.BoilerSerialNo,
                              'commisionedBy':
                                  BoilerCustomerDetail.CommisionedBy,
                              'companyName': BoilerCustomerDetail.Companyname,
                              'companyEmail':
                                  BoilerCustomerDetail.CompanyEmail2,
                              'companyAddress':
                                  BoilerCustomerDetail.companyAddress,
                              'telephoneNumber':
                                  BoilerCustomerDetail.telephoneNumber,
                              'commisioningDate': _date.text,
                              'boilerPlusReq': boilerPlus ?? '',
                              'zoneValves': zoneValves ?? '',
                            });
                            // BoilerCustomerDetail.Address2=_controoler.Address.text;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WaterQuality()));

                            print(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");
                          } else {
                            common.toastShow("Please Fill All Fields");
                          }
                          // if (_image != null) {
                          //   uploadimg(_image!);
                          // }
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future getCameraImage() async {
    final pickedFile = await piker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('no image selected');
      }
    });
  }

  void dialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            content: Container(
              height: 120,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      getCameraImage();
                    },
                    child: ListTile(
                      leading: Icon(Icons.add_a_photo),
                      title: Text('Camera'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      getImageGalary();
                    },
                    child: ListTile(
                      leading: Icon(Icons.photo_library_outlined),
                      title: Text('Gallery'),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  final piker = ImagePicker();

  Future getImageGalary() async {
    final pickedFile = await piker.pickImage(source: ImageSource.gallery);
    print('image selected');

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Navigator.pop(context);
        print('image setState selected');
      } else {
        print('no image selected');
      }
    });
  }
}
