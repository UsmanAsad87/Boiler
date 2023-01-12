import 'dart:io';

import 'package:boiler/boilerdetailcontroller.dart';
import 'package:boiler/colors/common.dart';
import 'package:boiler/view/BoilerPictures/BoilerPicture.dart';
import 'package:boiler/view/GlobalData.dart';
import 'package:boiler/view/PostIInstallation/postInstallation.dart';
import 'package:boiler/view/waterQuality/waterQuality.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class UpLoadCylinderPic extends StatefulWidget {
  const UpLoadCylinderPic({Key? key}) : super(key: key);

  @override
  State<UpLoadCylinderPic> createState() => _UpLoadCylinderPicState();
}

class _UpLoadCylinderPicState extends State<UpLoadCylinderPic> {
  final formkey = GlobalKey<FormState>();
  boilerdetailcontroller _controoler = new boilerdetailcontroller();
  File? _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
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
              "Complete The form \n and upload Pictures",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                  fontSize: 27.sp, fontWeight: FontWeight.w500),
            )),
            SizedBox(
              height: 35.h,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Complete Cylinder Benchmark",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.dmSans(
                        fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
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
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill,
                          ),
                        )
                      : Container(
                          width: 100,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text("Upload Picture"))),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Terbidity Test",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.dmSans(
                        fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 20.h,
            ),
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
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill,
                          ),
                        )
                      : Container(
                          width: 100,
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Center(child: Text("Upload Picture"))),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                if (formkey.currentState!.validate()) {
                  BoilerCustomerDetail.completeylnderbencmarkpic1=_controoler.completecylnderbencmarkuploadpic.text;
                   BoilerCustomerDetail.completecylinderbenhmarkuploadpic2=_controoler.teribiditytestuploadpic.text;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PostInstallation()));

                  print(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");
                } else {
                  common.toastShow("Please Fill All Fields");
                }
              },
              child: Container(
                margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * .6,
                height: 46.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff42FF55),
                ),
                child: Text(
                  'Next',
                  style: GoogleFonts.dmSans(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
            ),
          ],
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
