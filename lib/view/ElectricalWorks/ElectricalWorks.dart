import 'package:boiler/colors/common.dart';
import 'package:boiler/model/boilerModel.dart';
import 'package:boiler/provider/boiler_provider.dart';
import 'package:boiler/view/BottomBar/BottomBar.dart';
import 'package:boiler/view/boilerRequiredPictures.dart';
import 'package:boiler/view/surveycontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../GlobalData.dart';

class ElectricalWorks extends StatefulWidget {
  @override
  State<ElectricalWorks> createState() => _ElectricalWorksState();
}

class _ElectricalWorksState extends State<ElectricalWorks> {
  final formkey = GlobalKey<FormState>();
  surveycontroller _controoler = new surveycontroller();
  var yes = 1;

  
  @override
  Widget build(BuildContext context) {
    BoilerModel boilerModel =
        Provider.of<BoilerProvider>(context).getBoilerObject;
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
              SizedBox(
                height: 30.h,
              ),

              Center(
                  child: Text(
                "ELECTRICAL WORKS",
                style: GoogleFonts.dmSans(
                    fontSize: 27.sp, fontWeight: FontWeight.w500),
              )),
              Center(
                child: Container(
                    width: 250.w,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Electrician required on site:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        yes = 1;
                      });
                    },
                    child: Container(
                      height: 46.h,
                      width: 148,
                      decoration: yes == 1
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xff42FF55))
                          : BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white),
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
                        yes = 2;
                      });
                    },
                    child: Container(
                      height: 46.h,
                      width: 148,
                      decoration: yes == 2
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xff42FF55))
                          : BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white),
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
                height: 30.h,
              ),

              Center(
                  child: Text(
                "What does the electrician\nneed to do",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                    fontSize: 27.sp, fontWeight: FontWeight.w500),
              )),
              Center(
                child: Container(
                    width: 300.w,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.whatdoeselectritionneedtodocontroller,
                  keyboardType: TextInputType.text,
                  readOnly: false, maxLines: 6,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                  // readOnly: false, keyboardType: TextInputType.text
                ),
              ),

              /////////
              SizedBox(
                height: 30.h,
              ),

              Center(
                  child: Text(
                "What controls are we fitting",
                style: GoogleFonts.dmSans(
                    fontSize: 27.sp, fontWeight: FontWeight.w500),
              )),
              Center(
                child: Container(
                    width: 330.w,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
              ),

              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.whatcontrolsarewefittingcontroller,
                  keyboardType: TextInputType.text,
                  readOnly: false, maxLines: 6,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                  // readOnly: false, keyboardType: TextInputType.text
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              InkWell(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    print(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");
                    
                                Mycomponents.whatdoeselectritionneedtodo=_controoler.whatdoeselectritionneedtodocontroller.text;
                                Mycomponents.whatcontrolarewefitting=_controoler.whatcontrolsarewefittingcontroller.text;
                    boilerModel = boilerModel.copyWith(
                      electricianReq: yes==1?'Yes':'No',
                      whatElectricianDo: _controoler.whatdoeselectritionneedtodocontroller.text,
                      whatControlFitting: _controoler.whatcontrolsarewefittingcontroller.text,
                    );
                    print(boilerModel.toJson());
                    Provider.of<BoilerProvider>(context, listen: false)
                        .setBoilerObject(boilerModel);

                    // _controoler.signin();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BoilerRequiredPicture()));
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
