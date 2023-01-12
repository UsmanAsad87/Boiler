import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/RequiredPicture.dart';
import 'package:boiler/view/GlobalData.dart';
import 'package:boiler/view/ServeyASHPController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:boiler/colors/common.dart';
class ExtaInformationAndMeasurement extends StatefulWidget {
  const ExtaInformationAndMeasurement({Key? key}) : super(key: key);

  @override
  State<ExtaInformationAndMeasurement> createState() => _ExtaInformationAndMeasurementState();
}

class _ExtaInformationAndMeasurementState extends State<ExtaInformationAndMeasurement> {
  final formkey = GlobalKey<FormState>();
  ASHPsurveycontroller _controoler = new ASHPsurveycontroller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(height: 30,),
              
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
              SizedBox(height: 10,),
              Center(
                  child: Text(
                    "EXTRA INFORMATION AND\n MEASUREMENTS",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        fontSize: 27.sp, fontWeight: FontWeight.w500),
                  )),
              
              // Center(child: Text("EXTRA INFORMATION AND MEASUREMENTS",style: GoogleFonts.dmSans(fontSize:27.sp,fontWeight: FontWeight.w500),)),
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
                height: 20.h,
              ),
              
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Any property information (Bedrooms/ Type?)",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix4(
                  readOnly: false,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.anyPropertyController,),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Approximate distance between fuse board and \noutdoor unit",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix4(
                  readOnly: false,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.approximateController,),
              SizedBox(
                height: 10.h,
              ),
              
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Loft hatch dimensions:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix4(
                  readOnly: false,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.loftHatchController,),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Loft boarded:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix4(
                  readOnly: false,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.loftBoardedController,),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Loft have a light:",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix4(
                  readOnly: false,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.loftHaveController,),
              SizedBox(
                height: 10.h,
              ),
              
              SizedBox(
                height: 30.h,
              ),
              
              InkWell(
                onTap: () {
                  if(formkey.currentState!.validate()){
                          MyComponent.anyPropertyController = _controoler.anyPropertyController.text;
                          MyComponent.approximateController = _controoler.approximateController.text;
                          MyComponent.loftHatchController = _controoler.loftHatchController.text;
                          MyComponent.loftBoardedController = _controoler.loftBoardedController.text;
                          MyComponent.loftHaveController = _controoler.loftHaveController.text;
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => RequiredPicture()),
                          );}
                          else{
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
