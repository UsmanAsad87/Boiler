import 'package:boiler/colors/common.dart';
import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:boiler/view/ExistingBoilerSystemDetailsStep3/ExistingBoilerSystemDetailsStep3.dart';
import 'package:boiler/view/GlobalData.dart';
import 'package:boiler/view/surveycontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ExistingBoilerSystemDetails extends StatefulWidget {
  const ExistingBoilerSystemDetails({Key? key}) : super(key: key);

  @override
  State<ExistingBoilerSystemDetails> createState() =>
      _ExistingBoilerSystemDetailsState();
}

class _ExistingBoilerSystemDetailsState
    extends State<ExistingBoilerSystemDetails> {
  final formkey = GlobalKey<FormState>();
  surveycontroller _controoler = new surveycontroller();
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Checking -------> ${Mycomponents.installdate}');
  }
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
                  "EXISTING BOILER /\n SYSTEM DETAILS",
                  style: GoogleFonts.dmSans(
                      fontSize: 27.sp, fontWeight: FontWeight.w500),
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
                        "Make / Model:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.makeModelcontroller,
                    keyboardType: TextInputType.text,
                    readOnly: false,
                   // readOnly: false, keyboardType: TextInputType.text
                   ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Boiler Type:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.boilertypecontroller,
                    keyboardType: TextInputType.text,
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
                        "Boiler Position:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.boilerPositioncontroller,
                    keyboardType: TextInputType.text,
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
                        "Boiler Location:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.boilerocationcontroller,
                    keyboardType: TextInputType.text,
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
                        "Existing Heating Controls: ",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.existingheatingcontroller,
                    keyboardType: TextInputType.text,
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
                        "Asbestos Removal?",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.asbestosRemovalcontroller,
                    keyboardType: TextInputType.text,
                    readOnly: false,
                    ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Comments ",
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
                  child: TextFormField(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.comentscontroller,
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
                Center(
                    child: Text(
                  "PROPOSED NEW BOILER /\n       SYSTEM DETAILS",
                  style: GoogleFonts.dmSans(
                      fontSize: 22.sp, fontWeight: FontWeight.w500),
                )),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Container(
                      width: 190.w,
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      )),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Make / Model:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.makemodel1controller,
                    keyboardType: TextInputType.text,
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
                        "Boiler Type:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.boilertype2controller,
                    keyboardType: TextInputType.text,
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
                        "Boiler Position:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.boilerposition2controller,
                    keyboardType: TextInputType.text,
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
                        "Boiler Location:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.boilerlocation2controller,
                    keyboardType: TextInputType.text,
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
                        "Flue Orientation:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.flueorientationcontroller,
                    keyboardType: TextInputType.text,
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
                        "Plume Kit Required?",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.plumekitcontroller,
                    keyboardType: TextInputType.text,
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
                        "New Heating Controls:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.newheatingcontrolcontroller,
                    keyboardType: TextInputType.text,
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
                        "New Heating Controls Location(s):  ",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.newheatingcontrollocationcontroller,
                    keyboardType: TextInputType.text,
                    readOnly: false,
                    ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Gas Upgrade Required?",
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
                  child: TextFormField(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.gasupgradecontroller,
                    keyboardType: TextInputType.text,
                    readOnly: false,
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
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "New Condensate Location:",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.newcondesatelocationcontroller,
                    keyboardType: TextInputType.text,
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
                        "New Pump(s) to be Installed?",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.newpumptobeinstalledcontroller,
                    keyboardType: TextInputType.text,
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
                        "New Zone Valve(s) to be Installed?",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.newzonevaluecontroller,
                    keyboardType: TextInputType.text,
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
                        "Is a brick up required?",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' Cannot Be Empty';
                      }
                      return null;
                    },
                    controller: _controoler.isbickuprequiredcontroller,
                    keyboardType: TextInputType.text,
                    readOnly: false,
                    ),
                SizedBox(
                  height: 30.h,
                ),
                InkWell(
                  onTap: () {
                    //print(_controoler.emailcontroller.text);print( _controoler.passcontroller);
          
                    //print(_controoler.emailcontroller.toString() + _controoler.usrnamecontroller.toString() +_controoler.passcontroller.toString());
                    if (formkey.currentState!.validate()) {
                      print(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");
                      
                                Mycomponents.makemodel1=_controoler.makeModelcontroller.text;
                                
                                Mycomponents.boilertypr1=_controoler.boilertypecontroller.text;
                                Mycomponents.boilerposition1=_controoler.boilerPositioncontroller.text;
                                Mycomponents.boilerlocation1=_controoler.boilerocationcontroller.text;
                                Mycomponents.existingheating=_controoler.existingheatingcontroller.text;
                                Mycomponents.asbestosRemoval=_controoler.asbestosRemovalcontroller.text;
                                Mycomponents.comments=_controoler.comentscontroller.text;
                                Mycomponents.makemodel2=_controoler.makemodel1controller.text;
                                Mycomponents.boilertype2=_controoler.boilertype2controller.text;
                                Mycomponents.boilerposition2=_controoler.boilerlocation2controller.text;
                                Mycomponents.boilerlocation2=_controoler.boilerlocation2controller.text;
                                Mycomponents.flueorintaion=_controoler.flueorientationcontroller.text;
                                Mycomponents.plumekitrequired=_controoler.plumekitcontroller.text;
                                Mycomponents.newheatingcontrols=_controoler.newheatingcontrolcontroller.text;
                                Mycomponents.newhaetingcontrollocation=_controoler.newheatingcontrollocationcontroller.text;
                                Mycomponents.gasupgrade=_controoler.gasupgradecontroller.text;
                                Mycomponents.newcondesatelocation=_controoler.newcondesatelocationcontroller.text;
                                Mycomponents.newpump=_controoler.newpumptobeinstalledcontroller.text;
                                Mycomponents.newzone=_controoler.newzonevaluecontroller.text;
                                
                                Mycomponents.isbrickup=_controoler.isbickuprequiredcontroller.text;
                                
                      // _controoler.signin();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExistingBoilerSystemDetailsStep3()));
                    } else {
                      common.toastShow("Please Fill All Fields");
                    }
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             ExistingBoilerSystemDetailsStep3()));
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
