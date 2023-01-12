import 'package:boiler/colors/common.dart';
import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/CompleteMcsBenchMark.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:signature/signature.dart';

import '../../ASHPDETAILCOntroller.dart';
import '../../Constants/constants.dart';

class InstallMenuOfAshp extends StatefulWidget {
  const InstallMenuOfAshp({Key? key}) : super(key: key);

  @override
  State<InstallMenuOfAshp> createState() => _InstallMenuOfAshpState();
}

class _InstallMenuOfAshpState extends State<InstallMenuOfAshp> {
  final formkey = GlobalKey<FormState>();
  ASHPdetailcontroller _controoler = new ASHPdetailcontroller();

  TextEditingController _date =TextEditingController();
  TextEditingController _date1 =TextEditingController();

  TextEditingController _date2 =TextEditingController();

  final SignatureController _controller = SignatureController(
    penStrokeWidth: 2,
    penColor: Colors.grey,
    exportBackgroundColor: Colors.blue,
  );
  final SignatureController _controller1 = SignatureController(
    penStrokeWidth: 2,
    penColor: Colors.grey,
    exportBackgroundColor: Colors.blue,
  );
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
                "ASHP Install",
                style: GoogleFonts.dmSans(
                    fontSize: 27.sp, fontWeight: FontWeight.w500),
              )),
              SizedBox(
                height: 30.h,
              ),
              Center(
                  child: Text(
                "Installation Detail",
                style: GoogleFonts.dmSans(
                    fontSize: 24.sp, fontWeight: FontWeight.w500),
              )),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Customer Name:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.customername,
                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Address:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.address2,
                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Postcode:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.postcode2,
                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Installer:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
               CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.installer,
                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                    ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Installation Date:",
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
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
        
                  controller: _date,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                    filled: true,
                    fillColor: Colors.white,
        
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    enabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                  ),
                  keyboardType: TextInputType.text,
                  readOnly: false,
                  onTap: ()async{
                    DateTime? pickeddate=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2050));
                    if(pickeddate!=null){
                      setState(() {
                        _date.text= DateFormat("yyyy-mm-dd").format(pickeddate);
                      });
                    }
                  },
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              SizedBox(
                height: 30.h,
              ),
        
              Center(
                  child: Text(
                "Pre-Installation Checks",
                style: GoogleFonts.dmSans(
                    fontSize: 22.sp, fontWeight: FontWeight.w500),
              )),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Container(
                    width: 240.w,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 50.h,
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Text(
                      "Correct ASHP:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    )),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Color(0xffD9D9D9)),
                            child: Center(
                                child: Text(
                              "Yes",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp, fontWeight: FontWeight.w400),
                            )),
                          ),
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Color(0xffD9D9D9)),
                            child: Center(
                                child: Text(
                              "No",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp, fontWeight: FontWeight.w400),
                            )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
        
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Text(
                      "ASHP Location Correct",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    )),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Color(0xffD9D9D9)),
                            child: Center(
                                child: Text(
                              "Yes",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp, fontWeight: FontWeight.w400),
                            )),
                          ),
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Color(0xffD9D9D9)),
                            child: Center(
                                child: Text(
                              "No",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp, fontWeight: FontWeight.w400),
                            )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Text(
                      "All Pipes Route Agreed",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    )),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Color(0xffD9D9D9)),
                            child: Center(
                                child: Text(
                              "Yes",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp, fontWeight: FontWeight.w400),
                            )),
                          ),
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Color(0xffD9D9D9)),
                            child: Center(
                                child: Text(
                              "No",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp, fontWeight: FontWeight.w400),
                            )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Text(
                      "Correct Controls:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    )),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Color(0xffD9D9D9)),
                            child: Center(
                                child: Text(
                              "Yes",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp, fontWeight: FontWeight.w400),
                            )),
                          ),
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Color(0xffD9D9D9)),
                            child: Center(
                                child: Text(
                              "No",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp, fontWeight: FontWeight.w400),
                            )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Text(
                      "Radiator and TRV locations Agreed:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    )),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Color(0xffD9D9D9)),
                            child: Center(
                                child: Text(
                              "Yes",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp, fontWeight: FontWeight.w400),
                            )),
                          ),
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Color(0xffD9D9D9)),
                            child: Center(
                                child: Text(
                              "No",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp, fontWeight: FontWeight.w400),
                            )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
        
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Text(
                      "Customer Walked through the Installation ",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    )),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Color(0xffD9D9D9)),
                            child: Center(
                                child: Text(
                              "Yes",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp, fontWeight: FontWeight.w400),
                            )),
                          ),
                          Container(
                            height: 35.h,
                            width: 74.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Color(0xffD9D9D9)),
                            child: Center(
                                child: Text(
                              "No",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp, fontWeight: FontWeight.w400),
                            )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                    child: Text(
                  "Please ensure that all points listed above have been thoroughly explained to the customer and correspond with the technical survey in advance of starting any works. If there are any points which you or the customer have any issues with, please liaise with Head Office immediately.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp, fontWeight: FontWeight.w500),
                )),
              ),
              SizedBox(
                height: 30.h,
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
                "Contact Variation",
                style: GoogleFonts.dmSans(
                    fontSize: 22.sp, fontWeight: FontWeight.w500),
              )),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                    child: Text(
                  "If any changes or deviations to the current survey / job specification are required, please describe them below. In all cases they are to be discussed with customer / Head Office before any of the works are undertaken.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp, fontWeight: FontWeight.w500),
                )),
              ),
              SizedBox(
                height: 20.h,
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                    child: Text(
                  "If no changes are required, please state “No Variation” below.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp, fontWeight: FontWeight.w500),
                )),
              ),
              SizedBox(
                height: 20.h,
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                    child: Text(
                  "*Where changes incur extra materials or labour, the cost shall be borne by the customer*",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp, fontWeight: FontWeight.w500),
                )),
              ),
              SizedBox(
                height: 30.h,
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                    child: Text(
                  "Original Job Description",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 15.sp, fontWeight: FontWeight.w400),
                )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.originaljobdiscription,
                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                       maxLines: 5,
                  decoration: InputDecoration(
                    
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      )),
                
                    ),
                 
              ),
              SizedBox(
                height: 20.h,
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                    child: Text(
                  "Proposed Variation",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 15.sp, fontWeight: FontWeight.w400),
                )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.proposedvaraition,
                      //  keyboardType: TextInputType.text,
                      readOnly: false,
                       maxLines: 5,
                  decoration: InputDecoration(
                    
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17),
                      )),
                
                    ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                  child: Text(
                "Declaration",
                style: GoogleFonts.dmSans(
                    fontSize: 22.sp, fontWeight: FontWeight.w500),
              )),
        
              Center(
                child: Container(
                    width: 120.w,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                    child: Text(
                  "I, the customer, confirm that the points outlined above have been thoroughly explained to me and I confirm that I happy for the proposed variation of works to be carried out (where applicable):",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp, fontWeight: FontWeight.w500),
                )),
              ),
              SizedBox(
                height: 50.h,
              ),
        
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Customer Signature:",
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
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Signature(
                    controller: _controller,
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
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Date:",
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
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
        
                  controller: _date1,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                    filled: true,
                    fillColor: Colors.white,
        
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    enabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                  ),
                  keyboardType: TextInputType.text,
                  readOnly: false,
                  onTap: ()async{
                    DateTime? pickeddate=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2050));
                    if(pickeddate!=null){
                      setState(() {
                        _date1.text= DateFormat("yyyy-mm-dd").format(pickeddate);
                      });
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Installer Signature:",
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
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.9,
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
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Date:",
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
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
        
                  controller: _date2,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                    filled: true,
                    fillColor: Colors.white,
        
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    enabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                  ),
                  keyboardType: TextInputType.text,
                  readOnly: false,
                  onTap: ()async{
                    DateTime? pickeddate=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2050));
                    if(pickeddate!=null){
                      setState(() {
                        _date2.text= DateFormat("yyyy-mm-dd").format(pickeddate);
                      });
                    }
                  },
                ),
              ),
        
              SizedBox(
                height: 20.h,
              ),
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.symmetric(horizontal: 18.0),
              //       child: Text(
              //         "How much Glycol in the system?",
              //         style: GoogleFonts.dmSans(
              //             fontSize: 15.sp, fontWeight: FontWeight.w400),
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 20.h,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     InkWell(
              //       onTap: () {
              //         setState(() {
              //           glycolsystem = 0;
              //         });
              //       },
              //       child: Container(
              //         height: 33.h,
              //         width: 158.w,
              //         decoration: systemflushed == 0
              //             ? BoxDecoration(
              //             borderRadius: BorderRadius.circular(11),
              //             color: Color(0xff42FF55))
              //             : BoxDecoration(
              //             borderRadius: BorderRadius.circular(11),
              //             color: Colors.white),
              //         child: Center(
              //             child: Text(
              //               "Yes",
              //               style: GoogleFonts.dmSans(
              //                   fontSize: 15.sp, fontWeight: FontWeight.w400),
              //             )),
              //       ),
              //     ),
              //     InkWell(
              //       onTap: () {
              //         setState(() {
              //           systemflushed = 1;
              //         });
              //       },
              //       child: Container(
              //         height: 33.h,
              //         width: 158.w,
              //         decoration: systemflushed == 1
              //             ? BoxDecoration(
              //             borderRadius: BorderRadius.circular(11),
              //             color: Color(0xff42FF55))
              //             : BoxDecoration(
              //             borderRadius: BorderRadius.circular(11),
              //             color: Colors.white),
              //         child: Center(
              //             child: Text(
              //               "No",
              //               style: GoogleFonts.dmSans(
              //                   fontSize: 15.sp, fontWeight: FontWeight.w400),
              //             )),
              //       ),
              //     )
              //   ],
              // ),
              // SizedBox(
              //   height: 10.h,
              // ),
              // CustomTextFormFieldWithPrefix4(
              //     readOnly: false, keyboardType: TextInputType.text),
              // SizedBox(
              //   height: 20.h,
              // ),
              InkWell(
                onTap: () {
                   if (formkey.currentState!.validate()) {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CompleteMcsBenchMark()));
                     
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
      ),
    );
  }
}
