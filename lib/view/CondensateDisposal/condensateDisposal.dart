import 'package:boiler/boilerdetailcontroller.dart';
import 'package:boiler/colors/common.dart';
import 'package:boiler/view/GlobalData.dart';
import 'package:boiler/view/uploadCylinderPic.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/signature.dart';

class CondensateDisposal extends StatefulWidget {
  const CondensateDisposal({Key? key}) : super(key: key);

  @override
  State<CondensateDisposal> createState() => _CondensateDisposalState();
}

class _CondensateDisposalState extends State<CondensateDisposal> {
  final SignatureController _controller1 = SignatureController(
    penStrokeWidth: 2,
    penColor: Colors.grey,
    exportBackgroundColor: Colors.blue,
  );
  final SignatureController _controller2 = SignatureController(
    penStrokeWidth: 2,
    penColor: Colors.grey,
    exportBackgroundColor: Colors.blue,
  );

  final formkey = GlobalKey<FormState>();
  boilerdetailcontroller _controoler = new boilerdetailcontroller();
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
                SizedBox(
                  height: 30.h,
                ),
                Center(
                    child: Text(
                  "Condensate Disposal",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 22.sp, fontWeight: FontWeight.w500),
                )),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Container(
                      width: 220.w,
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      )),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    " I confirm that I have completed the above questions accurately and I am happy for this document to be used for internal auditing purposes.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
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
                Row(
                  children: [
                    Text(
                      "Point of termination",
                      style: GoogleFonts.dmSans(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
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
                        "Internal",
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
                        "External (only where internal termination impractical)",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400, fontSize: 10),
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Text(
                      "Method of disposal",
                      style: GoogleFonts.dmSans(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
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
                        "Gravity",
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
                        "Pumped",
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
                Center(
                    child: Text(
                  "All Installation",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 22.sp, fontWeight: FontWeight.w500),
                )),
                Center(
                  child: Container(
                      width: 150.w,
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      )),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Text(
                      "Record the following",
                      style: GoogleFonts.dmSans(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      "At max rate:",
                      style: GoogleFonts.dmSans(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "CO",
                    fillColor: Colors.white,
                    filled: true,
                    suffixText: "ppm",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.recordfollowingco1,
                  // Mycomponents.useremail=_controoler.emailcontroller.text;

                  //  keyboardType: TextInputType.text,
                  readOnly: false,
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "CO",
                    fillColor: Colors.white,
                    filled: true,
                    suffixText: "ppm",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.recordfollowingco2,
                  // Mycomponents.useremail=_controoler.emailcontroller.text;

                  //  keyboardType: TextInputType.text,
                  readOnly: false,
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "CO/co2",
                    fillColor: Colors.white,
                    filled: true,
                    suffixText: "ppm",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.recordfollowingco3,
                  // Mycomponents.useremail=_controoler.emailcontroller.text;

                  //  keyboardType: TextInputType.text,
                  readOnly: false,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Text(
                      "At min rate (where possible)",
                      style: GoogleFonts.dmSans(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "CO",
                    fillColor: Colors.white,
                    filled: true,
                    suffixText: "ppm",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.recordfollowingco3minrate1,
                  // Mycomponents.useremail=_controoler.emailcontroller.text;

                  //  keyboardType: TextInputType.text,
                  readOnly: false,
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "CO",
                    fillColor: Colors.white,
                    filled: true,
                    suffixText: "ppm",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.recordfollowingco1atminrate2,
                  // Mycomponents.useremail=_controoler.emailcontroller.text;

                  //  keyboardType: TextInputType.text,
                  readOnly: false,
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "CO",
                    fillColor: Colors.white,
                    filled: true,
                    suffixText: "ppm",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.recordfollowingco1atminrate3,
                  // Mycomponents.useremail=_controoler.emailcontroller.text;

                  //  keyboardType: TextInputType.text,
                  readOnly: false,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Where possible, has a flue integrity check been undertaken in accordance with manufacturers’ instructions, and readings are correct?",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.dmSans(
                        fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "The operation of the boiler and system controls have been demonstrated to and understood by the customer?",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.dmSans(
                        fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "The manufacturers’ literature, including Benchmark Checklist and Service Record, has been explained and left with the customer?",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.dmSans(
                        fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Commissioning Engineer’s signature",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.dmSans(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Signature(
                      controller: _controller1,
                      height: 100,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Customer’s signature\n(To confirm satisfactory demonstration and receipt of\nmanufacturers’ literature)",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.dmSans(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Signature(
                      controller: _controller2,
                      height: 100,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      BoilerCustomerDetail.recordfollowingCO1 =
                          _controoler.recordfollowingco1.text;
                      BoilerCustomerDetail.recordfollowingCO2 =
                          _controoler.recordfollowingco2.text;
                      BoilerCustomerDetail.recordfollowingCO3 =
                          _controoler.recordfollowingco3.text;
                      BoilerCustomerDetail.recordfollowingCO3atminrate1 =
                          _controoler.recordfollowingco3minrate1.text;
                      BoilerCustomerDetail.recordfollowingCO3atminrate2 =
                          _controoler.recordfollowingco1atminrate2.text;
                      BoilerCustomerDetail.recordfollowingCO3atminrate3 =
                          _controoler.recordfollowingco1atminrate3.text;
                      var ds = DateTime.now().toString();
                      var uid = FirebaseAuth.instance.currentUser!.uid;
                      FirebaseFirestore.instance
                          .collection('userInfo')
                          .doc(uid)
                          .collection('condensateDisposal')
                          .doc(ds)
                          .set({
                        'maxCO': BoilerCustomerDetail.recordfollowingCO1,
                        'maxCO2': BoilerCustomerDetail.recordfollowingCO2,
                        'maxCo/Co2': BoilerCustomerDetail.recordfollowingCO3,
                        'minCO':
                            BoilerCustomerDetail.recordfollowingCO3atminrate1,
                        'minCO2':
                            BoilerCustomerDetail.recordfollowingCO3atminrate2,
                        'minCo/Co2':
                            BoilerCustomerDetail.recordfollowingCO3atminrate3,
                        'engineerSignature':
                            _controller1.isEmpty ? null : _controller1.points,
                        'customerSignature':
                            _controller2.isEmpty ? null : _controller2.points,
                      }).whenComplete(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UpLoadCylinderPic()));
                      });
                      //  BoilerCustomerDetail.commisionenginersignature=_controller1.text;
                      //  BoilerCustomerDetail.customersignature=_controoler.recordfollowingco1.text;

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
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
