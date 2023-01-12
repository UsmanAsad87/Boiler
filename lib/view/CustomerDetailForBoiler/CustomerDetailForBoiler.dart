import 'package:boiler/ASHPDETAILCOntroller.dart';
import 'package:boiler/Constants/constants.dart';
import 'package:boiler/colors/common.dart';
import 'package:boiler/model/TextField2.dart';
import 'package:boiler/view/CustomerDetailForBoiler/customerdetailController.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../RiskAssesment/RiskAssesmentForm1.dart';

class CustomerDetailForBoiler extends StatefulWidget {
  const CustomerDetailForBoiler({Key? key}) : super(key: key);

  @override
  State<CustomerDetailForBoiler> createState() =>
      _CustomerDetailForBoilerState();
}

class _CustomerDetailForBoilerState extends State<CustomerDetailForBoiler> {
  TextEditingController _date = TextEditingController();
  var role = 1;
  var yes = 0;

  final formkey = GlobalKey<FormState>();
  CustomerDetailcontroller _controoler = new CustomerDetailcontroller();

  ASHPdetailcontroller _controoler2 = new ASHPdetailcontroller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
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
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "What You Like to install?",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                              color: Color(0xff232323)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),

                    InkWell(
                      onTap: () {
                        setState(() {
                          role = 1;
                        });
                      },
                      child: Container(
                        height: 42.h,
                        width: 342,
                        decoration: role == 1
                            ? BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20))
                            : BoxDecoration(
                                color: Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text("Boiler",
                              style: role == 1
                                  ? GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.sp,
                                      color: Colors.white)
                                  : GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.sp,
                                      color: Colors.black)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          role = 2;
                        });
                      },
                      child: Container(
                        height: 42.h,
                        width: 342,
                        decoration: role == 2
                            ? BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20))
                            : BoxDecoration(
                                color: Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text("ASHP",
                              style: role == 2
                                  ? GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.sp,
                                      color: Colors.white)
                                  : GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.sp,
                                      color: Colors.black)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),

                    Center(
                        child: Text(
                      "Fill Customer Details",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 28.sp,
                          color: Color(0xff232323)),
                    )),
                    Row(
                      children: [
                        Text(
                          "Name:",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.sp,
                              color: Color(0xff232323)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextFormFieldWithPrefix2(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'name Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.namecontroller,
                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Address:",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.sp,
                              color: Color(0xff232323)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextFormFieldWithPrefix2(
                      //keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'address Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.addresscontroller,
                      keyboardType: TextInputType.text,
                      readOnly: false,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Postcode:",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.sp,
                              color: Color(0xff232323)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextFormFieldWithPrefix2(
                      //keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Postal Code Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.postcodecontroller,
                      keyboardType: TextInputType.text,
                      readOnly: false,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Mobile No:",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.sp,
                              color: Color(0xff232323)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextFormFieldWithPrefix2(
                      //keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'contact Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.mobilecontroller,
                      keyboardType: TextInputType.text,
                      readOnly: false,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Date:",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.sp,
                              color: Color(0xff232323)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    TextFormField(
                      controller: _date,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.3),
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
                      height: 20.h,
                    ),
                    Center(
                        child: role == 1
                            ? Text(
                                "Boiler Details",
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 28.sp,
                                    color: Color(0xff232323)),
                              )
                            : Text(
                                "ASHP Details",
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 28.sp,
                                    color: Color(0xff232323)),
                              )),
                    SizedBox(
                      height: 20.h,
                    ),

                    ///////////
                    Row(
                      children: [
                        Text(
                          "Boiler Model No:",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.sp,
                              color: Color(0xff232323)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextFormFieldWithPrefix2(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Model No Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler2.boilermodelnum,
                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "KW's Size:",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.sp,
                              color: Color(0xff232323)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextFormFieldWithPrefix2(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'KW Size Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler2.kwssize,
                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Location:",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.sp,
                              color: Color(0xff232323)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextFormFieldWithPrefix2(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler2.location,
                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Do you want to install Cylinder?",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                              color: Color(0xff232323)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isInstall = 1;
                            });
                          },
                          child: Container(
                            height: 46.h,
                            width: 148,
                            decoration: isInstall == 1
                                ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xff42FF55))
                                : BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade400,
                                  ),
                            child: Center(
                                child: Text(
                              "Yes",
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 17),
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isInstall = 0;
                            });
                          },
                          child: Container(
                            height: 46.h,
                            width: 148,
                            decoration: isInstall == 0
                                ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xff42FF55))
                                : BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade400,
                                  ),
                            child: Center(
                                child: Text(
                              "No",
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 17),
                            )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                    Visibility(
                      visible: isInstall == 1,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Model No:",
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17.sp,
                                    color: Color(0xff232323)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          CustomTextFormFieldWithPrefix2(
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Model No Cannot Be Empty';
                              }
                              return null;
                            },
                            controller: _controoler2.modelnum,
                            //  keyboardType: TextInputType.text,
                            readOnly: false,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "Size Litres:",
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17.sp,
                                    color: Color(0xff232323)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          CustomTextFormFieldWithPrefix2(
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return ' Cannot Be Empty';
                              }
                              return null;
                            },
                            controller: _controoler2.sizeliters,
                            //  keyboardType: TextInputType.text,
                            readOnly: false,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "Location:",
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17.sp,
                                    color: Color(0xff232323)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          CustomTextFormFieldWithPrefix2(
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return ' Cannot Be Empty';
                              }
                              return null;
                            },
                            controller: _controoler2.location2,
                            //  keyboardType: TextInputType.text,
                            readOnly: false,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                      onTap: () {
                        print("2222222222222222");

                        // print(_controoler.emailcontroller.text);print( _controoler.passcontroller);

                        //print(_controoler.emailcontroller.toString() + _controoler.usrnamecontroller.toString() +_controoler.passcontroller.toString());
                        if (formkey.currentState!.validate()) {
                          print(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");
                          var uid = FirebaseAuth.instance.currentUser!.uid;
                          var ds = DateTime.now().toString();
                          FirebaseFirestore.instance
                              .collection('userInfo')
                              .doc(uid)
                              .collection('costumerDetails')
                              .doc(ds)
                              .set({
                            'role': role == 1 ? 'Boiler' : 'ASHP',
                            'name': _controoler.namecontroller.text,
                            'address': _controoler.addresscontroller.text,
                            'postalCode': _controoler.postcodecontroller.text,
                            'number': _controoler.mobilecontroller.text,
                            'date': _date.text,
                            'ds': ds,
                          }).whenComplete(() {
                            var isBoiler =
                                role == 1 ? 'BoilerDetails' : 'ASHPDetails';
                            var ds2 = DateTime.now().toString();
                            FirebaseFirestore.instance
                                .collection('userInfo')
                                .doc(uid)
                                .collection('costumerDetails')
                                .doc(ds)
                                .collection(isBoiler)
                                .doc(ds2)
                                .set({
                              'boilerModel': _controoler2.boilermodelnum.text,
                              'kwSize': _controoler2.kwssize.text,
                              'Location': _controoler2.location.text,
                              'isInstall': isInstall == 1 ? 'Yes' : 'No',
                              'installBoilerModel': isInstall == 1
                                  ? _controoler2.boilermodelnum.text
                                  : null,
                              'installSizeLitres': isInstall == 1
                                  ? _controoler2.sizeliters.text
                                  : null,
                              'installLocation': isInstall == 1
                                  ? _controoler2.location2.text
                                  : null,
                              'ds': ds2,
                            }).whenComplete(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RiskAssesmentForm1(
                                            role: role,
                                            ds: ds,
                                          )));
                            });
                          });
                        } else {
                          common.toastShow("Please Fill All Fields");
                        }

                        // ASHP();

                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => RiskAssesmentForm1(
                        //               role: role,
                        //             )));
                      },
                      child: Container(
                        height: 46.h,
                        width: 106,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xff42FF55)),
                        child: Center(
                            child: Text(
                          "Next Step",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400, fontSize: 17.sp),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
