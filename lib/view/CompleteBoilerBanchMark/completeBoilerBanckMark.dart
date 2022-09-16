import 'package:boiler/model/completeBoilerTextField.dart';
import 'package:boiler/view/UploadPicture/uploadPicture.dart';
import 'package:boiler/view/waterQuality/waterQuality.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CompleteBoilerBenchMark extends StatefulWidget {
  @override
  State<CompleteBoilerBenchMark> createState() =>
      _CompleteBoilerBenchMarkState();
}

class _CompleteBoilerBenchMarkState extends State<CompleteBoilerBenchMark> {

  TextEditingController _date =TextEditingController();
  var show = 0;

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
              Row(
                children: [
                  Text(
                    "Choose File:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
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
                                    fontWeight: FontWeight.w400, fontSize: 14),
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
                    Row(
                      children: [
                        Text(
                          "Choose File:",
                          style: GoogleFonts.dmSans(
                              fontSize: 20.sp, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UploadPicture()));
                      },
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                      ),
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
                        keyboardType: TextInputType.text, readOnly: false),
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
                        keyboardType: TextInputType.text, readOnly: false),
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
                        keyboardType: TextInputType.text, readOnly: false),
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
                        keyboardType: TextInputType.text, readOnly: false),
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
                        keyboardType: TextInputType.text, readOnly: false),
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
                        keyboardType: TextInputType.text, readOnly: false),
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
                        keyboardType: TextInputType.text, readOnly: false),
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
                        keyboardType: TextInputType.text, readOnly: false),
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
                    Container(
                        height: 45.h,
                        width: 347.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "Weather Compensations",
                            style: GoogleFonts.dmSans(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                        height: 45.h,
                        width: 347.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(
                              "Smart thermostat with automisation and optimisation",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                        height: 45.h,
                        width: 347.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(
                              "Time and temperature control to hot water",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                        height: 45.h,
                        width: 347.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(
                              "Cylinder thermostat and programmer/timer",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                        height: 45.h,
                        width: 347.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
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
                                  color: Colors.black),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                        height: 45.h,
                        width: 347.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(
                              "Flue Gas Heat Recovery",
                              style: GoogleFonts.dmSans(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                        height: 45.h,
                        width: 347.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(
                              "Combination boiler",
                              style: GoogleFonts.dmSans(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        )),
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
                    Container(
                        height: 45.h,
                        width: 347.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(
                              "Pre-existing",
                              style: GoogleFonts.dmSans(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                        height: 45.h,
                        width: 347.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(
                              "Fitted",
                              style: GoogleFonts.dmSans(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                        height: 45.h,
                        width: 347.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(
                              "Not Required",
                              style: GoogleFonts.dmSans(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WaterQuality()));
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
