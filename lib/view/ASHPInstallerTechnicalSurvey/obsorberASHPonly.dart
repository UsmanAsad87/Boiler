import 'package:boiler/model/completeBoilerTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'heatingSyatemControl.dart';

class obsorberASHPonly extends StatelessWidget {
  const obsorberASHPonly({Key? key}) : super(key: key);

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
                "Absorber (ASHP only)",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                    fontSize: 27.sp, fontWeight: FontWeight.w500),
              )),

              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Antifreeze make & type:  ",
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
              Text(
                "Anti-vibration feet fitted where required?",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
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
                    "Freeze protection:",
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
                    "Condensate drainage suitable?",
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
                    "Correct clearance around unit:",
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
                    "Evaporator clear of debris?",
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
                    "Installed on suitable base/bracket? ",
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
                    "Insulated and vapour sealed?",
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
              Text(
                "SPLIT SYSTEMS ONLY: System evacuated and refrigerant charged by F Gas registered operative?",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
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
                    "Refrigerant number and charge:",
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
                    "Clearance around unit:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Back",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                  Container(
                    height: 50.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "mm",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Front",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                  Container(
                    height: 50.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "mm",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Right",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                  Container(
                    height: 50.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "mm",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Left",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                  Container(
                    height: 50.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "mm",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Below",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                  Container(
                    height: 50.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "mm",
                        style: GoogleFonts.dmSans(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ),
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
                      "Collector (GSHP only)",
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
                    "Legionella frequency (days):",
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
                    "Header pipe diameter: ",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "mm",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Total number of loops/boreholes:",
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
                    "Pressure tested to BS EN 805?",
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
                    "System flushed and purged?",
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
                    "Total length of collector:",
                    style: GoogleFonts.dmSans(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "m",
              ),

              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Collector pipe diameter:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "mm",
              ),

              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Biocide used:",
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
                    "Total length of header: ",
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
                    "Thermal transfer fluid make & type:",
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
                    "Freeze protection to:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "C",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Expansion vessel pre-charge:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "bar",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Collector system pressure: ",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "bar",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Insulation vapour sealed: ",
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
                    "Collector installed to design?",
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
                      "Central Heating System",
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
              Row(
                children: [
                  Text(
                    "Emitter types:",
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
                    "Heating (HTG) ∆T:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "k",
              ),

              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "System pressure:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "bar",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Strainers/filters clear?",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Expansion vessel pre-charge:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "bar",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "HTG system flushed and cleaned?",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "C",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Safety relief valve setting:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "bark",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "HTG system cleaner used:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Buffer store volume: ",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "HTG system water treated?",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Circulation pump setting:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Inhibitor/anti-freeze used:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "HTG system purged of air?",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "DHW cylinder volume:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "",
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "G3 commissioning certificate completed?",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "",
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "System installed as per design?",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "",
              ),
              Text(
                "Do all emitters heat up evenly with a similar ∆Tacross F&R?",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "",
              ),

              SizedBox(
                height: 20.h,
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HeatingSystemControl()));
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
