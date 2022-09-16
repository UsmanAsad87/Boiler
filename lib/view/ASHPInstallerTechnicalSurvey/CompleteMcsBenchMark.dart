import 'package:boiler/model/completeBoilerTextField.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/heatPumpControlPerameters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CompleteMcsBenchMark extends StatefulWidget {
  const CompleteMcsBenchMark({Key? key}) : super(key: key);

  @override
  State<CompleteMcsBenchMark> createState() => _CompleteMcsBenchMarkState();
}

class _CompleteMcsBenchMarkState extends State<CompleteMcsBenchMark> {
  TextEditingController _date =TextEditingController();

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
                "Complete MCS",
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
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Project reference:",
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
                    "Installation Address:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
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
                    "Customer Name:",
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
                    "Customer Email:",
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
                    "Completed by:",
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
                    "Date:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
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
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Technician:",
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
                    "MCS No:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
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
                    "Contact No:",
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
                    "Email:",
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
                height: 40.h,
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              SizedBox(
                height: 20.h,
              ),

              Text(
                "The following checklist is direct guidance from MIS 3005-I. Please use this in conjunction with any commissioning checklist provided by the heat pump manufacturer.",
                style: GoogleFonts.dmSans(
                    fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    Text(
                      "Product Information",
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
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Heat pump type",
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
                    "Heat pump model number",
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
                    "Serial number",
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
                    "Indoor model number",
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
                    "Serial number",
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
                    "Interface model number",
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
                    "Serial number",
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
                    "Contact No:",
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
                    "Manufacture",
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
              // Installer as per manufacturer's instructions?
              SizedBox(
                height: 15.h,
              ),

              Row(
                children: [
                  Text(
                    "Installer as per manufacturer's\ninstructions?",
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
              // Installer as per manufacturer's instructions?

              SizedBox(
                height: 30.h,
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Pre-commissioning checks -\n electrical",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        fontSize: 21.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),

              SizedBox(
                height: 10.h,
              ),

              Row(
                children: [
                  Text(
                    "Electrical supply (single/three phase)",
                    style: GoogleFonts.dmSans(
                        fontSize: 15.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),
              SizedBox(
                height: 10.h,
              ),

              Row(
                children: [
                  Text(
                    "Resistance to earth (L-E)",
                    style: GoogleFonts.dmSans(
                        fontSize: 15.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),
              SizedBox(
                height: 10.h,
              ),

              Row(
                children: [
                  Text(
                    "Short circuit test (L-N",
                    style: GoogleFonts.dmSans(
                        fontSize: 15.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    "Visual condition of installation",
                    style: GoogleFonts.dmSans(
                        fontSize: 15.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    "All sensors checked and reading correctly?",
                    style: GoogleFonts.dmSans(
                        fontSize: 15.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 30.h,
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Incoming voltage",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        fontSize: 21.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 78.0),
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),

              SizedBox(
                height: 20.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "L1-N                                      V:",
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "L2-N                                      V:",
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "L3-N                                      V:",
              ),

              SizedBox(
                height: 20.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "L1-E                                      V:",
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "L2-E                                      V:",
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "L3-E                                      V:",
              ),

              SizedBox(
                height: 20.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "L1-L2                                      V:",
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "L2-L3                                      V:",
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "L2-L3                                      V:",
              ),
              SizedBox(
                height: 20.h,
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HeatPumpControllPerameters()));
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
