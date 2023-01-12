import 'dart:io';

import 'package:boiler/colors/common.dart';
import 'package:boiler/model/completeBoilerTextField.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/ASHPPictures.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/heatPumpControlPerameters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../ASHPDETAILCOntroller.dart';

class CompleteMcsBenchMark extends StatefulWidget {
  const CompleteMcsBenchMark({Key? key}) : super(key: key);

  @override
  State<CompleteMcsBenchMark> createState() => _CompleteMcsBenchMarkState();
}

class _CompleteMcsBenchMarkState extends State<CompleteMcsBenchMark> {
  final formkey = GlobalKey<FormState>();
  ASHPdetailcontroller _controoler = new ASHPdetailcontroller();
  final ImagePicker _picker = ImagePicker();
  File? _image;
  var show=0;
  TextEditingController _date =TextEditingController();

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
                  height: 15.h,
                ),
                Visibility(
                  visible: show == 0,
                  child: Column(
                    children: [
          
                      SizedBox(
                        height: 10.h,
                      ),
                      InkWell(
                        onTap: () {
                          dialog(context);
                        },
                        child: Center(
                          child: Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: _image != null
                                ? ClipRect(
                              clipBehavior: Clip.hardEdge,
          
                              child: Image.file(
                                _image!.absolute,
                                height: 100,
                                width: MediaQuery.of(context).size
                                    .width,
          
                                fit: BoxFit.fill,
                              ),
                            )
                                : Container(
                                width: 100,
                                height: 130,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(child: Text("Upload Picture"))
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
          
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ASHPPictures()));
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
               Visibility(
                 visible: show==1,
                 child: Column(
                   children: [
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.projectrefrence,
                      //  keyboardType: TextInputType.text,
                      readOnly: false,
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
                     TextFormField(
                       maxLines: 2,
                        keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.installationadress,
                      //  keyboardType: TextInputType.text,
                      readOnly: false, decoration: InputDecoration(
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
                     CustomTextFormFieldWithPrefix3(keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.customeremail,
                      //  keyboardType: TextInputType.text,
                      readOnly: false),
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
                     CustomTextFormFieldWithPrefix3(keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.customeremail,
                      //  keyboardType: TextInputType.text,
                      readOnly: false),
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
                     CustomTextFormFieldWithPrefix3(keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.completedby,
                      //  keyboardType: TextInputType.text,
                      readOnly: false),
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
                     CustomTextFormFieldWithPrefix3(keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.technision,
                      //  keyboardType: TextInputType.text,
                      readOnly: false),
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
                        keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.mcsno,
                      //  keyboardType: TextInputType.text,
                      readOnly: false, decoration: InputDecoration(
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.contactnum,
                          readOnly: false),
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.email,
                          readOnly: false),
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.heatpumptype,
                          readOnly: false),
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.heatpumpmodelnum,
                         readOnly: false),
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.serialnum,
                          readOnly: false),
          
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.indoormodelnum,
                         readOnly: false),
          
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.serialnum,readOnly: false),
          
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.interfacemodelnum, readOnly: false),
          
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.serialnum2, readOnly: false),
          
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.contactnum2, readOnly: false),
          
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.contactnum2, readOnly: false),
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.manufacture, readOnly: false),
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.electricalsupply, readOnly: false),
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.risitancetoearth, readOnly: false),
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.shortcircuittest, readOnly: false),
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.visiualcondition, readOnly: false),
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.allsensorchecked, readOnly: false),
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
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.incommimgvoltage1,
                       readOnly: false,
                       hintText: "L1-N                                      V:",
                     ),
                     SizedBox(
                       height: 20.h,
                     ),
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.incommimgvoltage2,
                       readOnly: false,
                       hintText: "L2-N                                      V:",
                     ),
                     SizedBox(
                       height: 20.h,
                     ),
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.incommimgvoltage3,
                       readOnly: false,
                       hintText: "L3-N                                      V:",
                     ),
          
                     SizedBox(
                       height: 20.h,
                     ),
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.incommimgvoltage4,
                       readOnly: false,
                       hintText: "L1-E                                      V:",
                     ),
                     SizedBox(
                       height: 20.h,
                     ),
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.incommimgvoltage5,
                       readOnly: false,
                       hintText: "L2-E                                      V:",
                     ),
                     SizedBox(
                       height: 20.h,
                     ),
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.incommimgvoltage6,
                       readOnly: false,
                       hintText: "L3-E                                      V:",
                     ),
          
                     SizedBox(
                       height: 20.h,
                     ),
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.incommimgvoltage7,
                       readOnly: false,
                       hintText: "L1-L2                                      V:",
                     ),
                     SizedBox(
                       height: 20.h,
                     ),
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.incommimgvoltage8,
                       readOnly: false,
                       hintText: "L2-L3                                      V:",
                     ),
                     SizedBox(
                       height: 20.h,
                     ),
                     CustomTextFormFieldWithPrefix3( keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Cannot Be Empty';
                        }
                        return null;
                      },
                      controller: _controoler.incommimgvoltage9,
                       readOnly: false,
                       hintText: "L2-L3                                      V:",
                     ),
                     SizedBox(
                       height: 20.h,
                     ),
                     SizedBox(
                       height: 20.h,
                     ),
          
                     InkWell(
                       onTap: () {  //print(_controoler.emailcontroller.toString() + _controoler.usrnamecontroller.toString() +_controoler.passcontroller.toString());
                    if (formkey.currentState!.validate()) {Navigator.push(
                             context,
                             MaterialPageRoute(
                                 builder: (context) => HeatPumpControllPerameters()));
                     
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
          
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future getCameraImage() async {
    final pickedFile = await piker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('no image selected');
      }
    });
  }
  void dialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            content: Container(
              height: 120,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      getCameraImage();
                    },
                    child: ListTile(
                      leading: Icon(Icons.add_a_photo),
                      title: Text('Camera'),
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      getImageGalary();
                    },
                    child: ListTile(
                      leading: Icon(Icons.photo_library_outlined),
                      title: Text('Gallery'),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
  final piker = ImagePicker();

  Future getImageGalary() async {
    final pickedFile = await piker.pickImage(source: ImageSource.gallery);
    print('image selected');

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Navigator.pop(context);
        print('image setState selected');
      } else {
        print('no image selected');
      }
    });
  }
}
