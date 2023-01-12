import 'package:boiler/model/ASHPModel.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/ElectricalSystem.dart';
import 'package:boiler/view/GlobalData.dart';
import 'package:boiler/view/ServeyASHPController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:boiler/colors/common.dart';
import 'package:provider/provider.dart';
import '../../model/installMenuOfBoiler.dart';
import '../../provider/ASHPprovider.dart';

class ExistingRadiatorAndLocation extends StatefulWidget {
  const ExistingRadiatorAndLocation({Key? key}) : super(key: key);

  @override
  State<ExistingRadiatorAndLocation> createState() => _ExistingRadiatorAndLocationState();
}

class _ExistingRadiatorAndLocationState extends State<ExistingRadiatorAndLocation> {
  final formkey = GlobalKey<FormState>();
  ASHPsurveycontroller _controoler = new ASHPsurveycontroller();
  @override
  Widget build(BuildContext context) {
    ASHPModel model = Provider.of<ASHPProvider>(context).getASHPObject;
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
                  "EXISTING RADIATOR AND\n LOCATION",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 27.sp, fontWeight: FontWeight.w500),
                )),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Container(
                      width: 210.w,
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
                        "Room:",
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
                    controller: _controoler.roomController,),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Size:",
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
                    controller: _controoler.sizeController,),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Where in the room:",
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
                    controller: _controoler.whereController,),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "New location if required:",
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
                    controller: _controoler.newController,),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Pipe size:",
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
                    controller: _controoler.pipeSizeController,),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Add More ",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                      Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20.h,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 55.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Total Rads:",
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
                    controller: _controoler.totalRadsController,),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "How many to change:",
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
                    controller: _controoler.howManyToChangeController,),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "PDo we need to re-pipe:",
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
                    controller: _controoler.pDoController,),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "How many Trv’s:",
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
                    controller: _controoler.howManyTrvsController,),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "How many lockshields:",
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
                    controller: _controoler.howManyLockshieldsController,),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Comments:",
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
                  child: TextFormField(
                    readOnly: false,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.comments6Controller,
                    maxLines: 3,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        )),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: 30.h,
                ),
                InkWell(
                  onTap: () {
                    if(formkey.currentState!.validate()){
                        MyComponent.roomController = _controoler.roomController.text;
                        MyComponent.sizeController = _controoler.sizeController.text;
                        MyComponent.whereController = _controoler.whereController.text;
                        MyComponent.newController = _controoler.newController.text;
                        MyComponent.pipeSizeController = _controoler.pipeSizeController.text;
                        MyComponent.totalRadsController = _controoler.totalRadsController.text;
                        MyComponent.howManyToChangeController = _controoler.howManyToChangeController.text;
                        MyComponent.pDoController = _controoler.pDoController.text;
                        MyComponent.howManyTrvsController = _controoler.howManyTrvsController.text;
                        MyComponent.howManyLockshieldsController = _controoler.howManyLockshieldsController.text;
                        MyComponent.comments6Controller = _controoler.comments6Controller.text;
                        model=model.copyWith(
                            room : _controoler.roomController.text,
                           size : _controoler.sizeController.text,
                            where : _controoler.whereController.text,
                           existingRaidLocation : _controoler.newController.text,
                            pipeSize : _controoler.pipeSizeController.text,
                           totalRads : _controoler.totalRadsController.text,
                            howManyToChange : _controoler.howManyToChangeController.text,
                             pDo: _controoler.pDoController.text,
                           howManyTrvs : _controoler.howManyTrvsController.text,
                            howManyLockshields : _controoler.howManyLockshieldsController.text,
                            existingRadiatorComments : _controoler.comments6Controller.text,
                        );
                        print(model.toJson().toString().substring(202,));
                        Provider.of<ASHPProvider>(context,listen: false).setASHPObject(model);

                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ElectricalSystem()));}
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
        ));
  }
}
