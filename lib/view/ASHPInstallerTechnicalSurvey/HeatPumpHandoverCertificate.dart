import 'package:boiler/view/ASHPInstallerTechnicalSurvey/ASHPPictures.dart';
import 'package:boiler/view/BottomBar/BottomBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/signature.dart';

import '../../model/completeBoilerTextField.dart';
class HeatPumpHandoverCertificate extends StatefulWidget {
  const HeatPumpHandoverCertificate({Key? key}) : super(key: key);

  @override
  State<HeatPumpHandoverCertificate> createState() => _HeatPumpHandoverCertificateState();
}

class _HeatPumpHandoverCertificateState extends State<HeatPumpHandoverCertificate> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 2,
    penColor: Colors.grey,
    exportBackgroundColor: Colors.blue,
  );
  @override
  Widget build(BuildContext context) {
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
                    "Heat Pump Handover\nCertificate",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        fontSize: 27.sp, fontWeight: FontWeight.w500),
                  )),


              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: 20.h,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Container(height: 50,width: MediaQuery.of(context).size.width*0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(

                    child: Text(
                      "Initial verification",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w400,color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Container(height: 50,width: MediaQuery.of(context).size.width*0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(

                    child: Text(
                      "Periodic verification",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w400,color: Colors.black),
                    ),
                  ),
                ),
              ),













              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Installation Address:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false,maxLines: 5,),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Client Name",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text, readOnly: false,hintText: "",maxLines: 5,),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Client Name",
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
              Row(
                children: [
                  Text(
                    "Test Date:",
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
              Row(
                children: [
                  Text(
                    "Contractor's details",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(height: 250,width: MediaQuery.of(context).size.width*0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(

                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        "The Green Deal Factory t/a Clever Energy Boilers Office 25B Aire Valley Business Centre Lawkholme Lane Keighley West Yorkshire BD21 3BB 01274 214557 info@cleverenergyboilers.co.uk",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400,color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "MCS Contact",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(height: 100,width: MediaQuery.of(context).size.width*0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(

                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
"Telephone: 0333 103 8130\n Email:hello@mcscertified.com",                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp, fontWeight: FontWeight.w400,color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Description of installation \n (key components installed)",
                    style: GoogleFonts.dmSans(
                      fontSize: 20.sp, fontWeight: FontWeight.w400,),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text, readOnly: false,hintText: "",maxLines: 5,),

              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
"System rated capacity:",                style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text, readOnly: false,hintText: "kw",),

              SizedBox(
                height: 15.h,
              ),
              Text(
                "Annual Space Heating  demand (per MIS 3005) ",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text, readOnly: false,maxLines: 5,hintText: "kwh",),

              SizedBox(
                height: 15.h,
              ),
              Text(
                "Design flow temperature",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text, readOnly: false,maxLines: 5,hintText: "C",),
              // Installer as per manufacturer's instructions?
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Heat Pump SCoP (at design flow temperature)",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false,maxLines: 5,),
              SizedBox(
                height: 15.h,
              ),
              ///////////////////////////////////////////////////////////////////////
              SizedBox(
                height: 20.h,
              ),
              Divider(thickness: 1,color: Colors.black,),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    Text(
                      "DESIGN, CONSTRUCTION, \n INSPECTION AND TESTING",
                      textAlign: TextAlign.center,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text(
                  "I/we being the person(s) responsible for the design, construction, inspection and testing of the heat pump installation (as indicated by the signatures below), particulars of which are described above, having exercised reasonable skill and care when carrying out the design, construction, inspection and testing, hereby certify that the said work for which I/we have been responsible is, to the best of my/our knowledge and belief, in accordance with MCS Installation Standard MIS 3005.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Signature:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
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
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Signature(controller: _controller,
                    height: 100,
                    backgroundColor: Colors.white,

                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    "Name:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text, readOnly: false,maxLines: 1,hintText: "",),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Next inspection recommended after not more than: ",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text, readOnly: false,maxLines: 1,hintText: "years",),

                 SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    "Comments",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text, readOnly: false,maxLines: 5,hintText: "",),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "(The extent of liability of the signatory (s) is limited to the work described above)",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text, readOnly: false,maxLines: 5,hintText: "",),











              SizedBox(height: 20.h,),








              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomBar()));
                },
                child: Container(
                  height: 46.h,
                  width: 193.w,
                  decoration: BoxDecoration(
                      color: Color(0xff42FF55),
                      borderRadius: BorderRadius.circular(11)),
                  child: Center(
                    child: Text(
                      "save",
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
