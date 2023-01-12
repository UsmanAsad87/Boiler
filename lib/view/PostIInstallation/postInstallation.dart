import 'package:boiler/boilerdetailcontroller.dart';
import 'package:boiler/colors/common.dart';
import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:boiler/view/CustomerSatisfication/customerSatisfication.dart';
import 'package:boiler/view/GlobalData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


class PostInstallation extends StatefulWidget {
  const PostInstallation({Key? key}) : super(key: key);

  @override
  State<PostInstallation> createState() => _PostInstallationState();
}

class _PostInstallationState extends State<PostInstallation> {
  final formkey = GlobalKey<FormState>();
  boilerdetailcontroller _controoler = new boilerdetailcontroller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFEFEF),
        body: SingleChildScrollView(
          child: Form(key: formkey,
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
                  "Post Installation",
                  style: GoogleFonts.dmSans(
                      fontSize: 27.sp, fontWeight: FontWeight.w500),
                )),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Container(
                      width: 200.w,
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
                CustomTextFormFieldWithPrefix4( keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationcustomername,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "Email",
                label: "Email",
              ), SizedBox(
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
                CustomTextFormFieldWithPrefix4( keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationAdress,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "Adress",
                label: "Adress",
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
                CustomTextFormFieldWithPrefix4( keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationpostcode,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "postcode",
                label: "postcode",
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
                controller: _controoler.postinstallationinstaller,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "installer",
                label: "installer",
              ),  SizedBox(
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
          
                    controller: _controoler.postinstallationinstalltiondate,
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
                          _controoler.postinstallationinstalltiondate.text= DateFormat("yyyy-mm-dd").format(pickeddate);
                        });
                      }
                    },
                  ),
                ),              SizedBox(
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
                  "Radiator Checks",
                  style: GoogleFonts.dmSans(
                      fontSize: 22.sp, fontWeight: FontWeight.w500),
                )),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Container(
                      width: 170.w,
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
                        "Pre-Installation Checks",
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
                                  color: Colors.white),
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
                                  color: Colors.white),
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
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationpostinstallationcomment1,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "comment",
                label: "comment",
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
                        "Kitchen :",
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
                                  color: Colors.white),
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
                                  color: Colors.white),
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
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationcomment2,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "comment",
                label: "comment",
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
                        "Dining Room:",
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
                                  color: Colors.white),
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
                                  color: Colors.white),
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
                  height: 10.h,
                ),
                 CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationcommment3,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "comment",
                label: "comment",
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
                        "Hallway:",
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
                                  color: Colors.white),
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
                                  color: Colors.white),
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
                  height: 10.h,
                ),
                 CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationcomment4,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "comment",
                label: "comment",
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
                        "Bathroom:",
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
                                  color: Colors.white),
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
                                  color: Colors.white),
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
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationcomment5,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "comment",
                label: "comment",
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
                        "Landing:",
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
                                  color: Colors.white),
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
                                  color: Colors.white),
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
                  height: 10.h,
                ),
               CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationcomment6,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "comment",
                label: "comment",
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
                        "Bedroom 1:",
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
                                  color: Colors.white),
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
                                  color: Colors.white),
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
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationcomment7,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "comment",
                label: "comment",
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
                        "Bedroom 2:",
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
                                  color: Colors.white),
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
                                  color: Colors.white),
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
                  height: 10.h,
                ),
                 CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationcomment8,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "comment",
                label: "comment",
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
                        "Bedroom 3:",
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
                                  color: Colors.white),
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
                                  color: Colors.white),
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
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationcomment9,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "comment",
                label: "comment",
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
                          child: Padding(
                        padding: const EdgeInsets.only(
                          right: 28.0,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "*",
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
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
                                  color: Colors.white),
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
                                  color: Colors.white),
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
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationcomment10,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "comment",
                label: "comment",
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
                          child: Padding(
                        padding: const EdgeInsets.only(
                          right: 28.0,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "*",
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
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
                                  color: Colors.white),
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
                                  color: Colors.white),
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
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationcomment11,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "comment",
                label: "comment",
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
                          child: Padding(
                        padding: const EdgeInsets.only(
                          right: 28.0,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "*",
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
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
                                  color: Colors.white),
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
                                  color: Colors.white),
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
                  height: 10.h,
                ),
                CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationcomment12,
               // Mycomponents.useremail=_controoler.emailcontroller.text;

                //  keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "comment",
                label: "comment",
              ),
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
                SizedBox(
                  height: 20.h,
                ),
                Center(
                    child: Text(
                  "Radiators / TRVs",
                  style: GoogleFonts.dmSans(
                      fontSize: 22.sp, fontWeight: FontWeight.w500),
                )),
                Center(
                  child: Container(
                      width: 170.w,
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      )),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                      child: Text(
                    "All radiators except the bypass and any towel radiators should have TRVs fitted, this includes any designer radiators. If, for any reason, a radiator except the bypass or towel radiator does not have a TRV, please state which:",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        fontSize: 12.sp, fontWeight: FontWeight.w500),
                  )),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: TextFormField( validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationcommentRadiatorsTRVS,
                    maxLines: 7,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration.collapsed(
                        hintText: "Comment",
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
                    "A BYPASS RADIATOR MUST BE PRESENT UPON COMPLETION OF THE INSTALLATION IN ALL CIRCUMSTANCES. ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        fontSize: 13.sp, fontWeight: FontWeight.w500),
                  )),
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
                  "Waste Removal",
                  style: GoogleFonts.dmSans(
                      fontSize: 22.sp, fontWeight: FontWeight.w500),
                )),
                Center(
                  child: Container(
                      width: 170.w,
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
                    "I/we confirm that we have requested the installer to remove all the waste including the old boiler and cylinder from the property (where applicable):",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        fontSize: 12.sp, fontWeight: FontWeight.w500),
                  )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 33.h,
                      width: 158.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white),
                      child: Center(
                          child: Text(
                        "Yes",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      )),
                    ),
                    Container(
                      height: 33.h,
                      width: 158.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white),
                      child: Center(
                          child: Text(
                        "No",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "I/we confirm that we have requested the installer to remove the following waste items below for responsible disposal:",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: TextFormField( validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.postinstallationcomment1wasteremovalcomment,
                    maxLines: 7,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration.collapsed(
                        hintText: "Comment",
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
                  "Customer Satisfaction Questionnaire (Part 1)",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 22.sp, fontWeight: FontWeight.w500),
                )),
                Center(
                  child: Container(
                      width: 340.w,
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      )),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Was our installer punctual and polite?",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 33.h,
                      width: 158.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white),
                      child: Center(
                          child: Text(
                        "Yes",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      )),
                    ),
                    Container(
                      height: 33.h,
                      width: 158.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white),
                      child: Center(
                          child: Text(
                        "No",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    "Were you trained on how to use your new boiler / system?",
                    style: GoogleFonts.dmSans(
                        fontSize: 15.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 33.h,
                      width: 158.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white),
                      child: Center(
                          child: Text(
                        "Yes",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      )),
                    ),
                    Container(
                      height: 33.h,
                      width: 158.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white),
                      child: Center(
                          child: Text(
                        "No",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    "Did our installer clean the interior and exterior of the property thoroughly?",
                    style: GoogleFonts.dmSans(
                        fontSize: 15.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 33.h,
                      width: 158.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white),
                      child: Center(
                          child: Text(
                        "Yes",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      )),
                    ),
                    Container(
                      height: 33.h,
                      width: 158.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white),
                      child: Center(
                          child: Text(
                        "No",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: [
                      Text(
                        "Are you satisfied with the overall installation? ",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 33.h,
                      width: 158.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white),
                      child: Center(
                          child: Text(
                        "Yes",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      )),
                    ),
                    Container(
                      height: 33.h,
                      width: 158.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white),
                      child: Center(
                          child: Text(
                        "No",
                        style: GoogleFonts.dmSans(
                            fontSize: 15.sp, fontWeight: FontWeight.w400),
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                InkWell(
                  onTap: () { if (formkey.currentState!.validate()) {
                    BoilerCustomerDetail.customername=_controoler.postinstallationcustomername.text;
                    BoilerCustomerDetail.Address2=_controoler.postinstallationAdress.text;
                    BoilerCustomerDetail.postcode3=_controoler.postinstallationpostcode.text;
                    BoilerCustomerDetail.installer=_controoler.postinstallationinstaller.text;
                    BoilerCustomerDetail.InstallationDate=_controoler.postinstallationinstalltiondate.text;
                    BoilerCustomerDetail.radiatorcheckcomment=_controoler.postinstallationpostinstallationcomment1.text;
                    BoilerCustomerDetail.radiatorcheckkitchen=_controoler.postinstallationcomment2.text;
                    BoilerCustomerDetail.diningroomcomment=_controoler.postinstallationcommment3.text;
                    BoilerCustomerDetail.hallwaycomment=_controoler.postinstallationcomment4.text;
                    BoilerCustomerDetail.bathroomcomment=_controoler.postinstallationcomment5.text;
                    BoilerCustomerDetail.landingcomment=_controoler.postinstallationcomment6.text;
                    BoilerCustomerDetail.bathroomcomment=_controoler.postinstallationcomment7.text;
                    BoilerCustomerDetail.landingcomment=_controoler.postinstallationcomment8.text;
                    BoilerCustomerDetail.bedroomcomment=_controoler.postinstallationcomment9.text;
                    BoilerCustomerDetail.bedroom2comment=_controoler.postinstallationcomment10.text;
                    BoilerCustomerDetail.radiatortrvscomment=_controoler.postinstallationcomment11.text;
                    BoilerCustomerDetail.wasteremovalcomment=_controoler.postinstallationcomment12.text;
                    
                    BoilerCustomerDetail.radiatortrvscomment=_controoler.postinstallationcommentRadiatorsTRVS.text;
                    
                    BoilerCustomerDetail.wasteremovalcomment=_controoler.postinstallationcomment1wasteremovalcomment.text;
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CustomerSatisfication()));

                      print(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");
                    
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
        ));
  }
}
