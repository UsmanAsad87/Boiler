import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:boiler/view/BottomBar/BottomBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

import '../GlobalData.dart';

class RequiredPicture extends StatefulWidget {
  const RequiredPicture({Key? key}) : super(key: key);

  @override
  State<RequiredPicture> createState() => _RequiredPictureState();
}

class _RequiredPictureState extends State<RequiredPicture> {
  final ImagePicker _picker = ImagePicker();
  List<XFile>? imageFileList = [];
  File? _image;
  File? _image1;

  SurveyASHP() async {
    setState(() {
      print("1");
    });
    DateTime now = DateTime.now();
//String c=e.DateTime.now();
    String convertedDateTime =
        "${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}-${now.minute.toString().padLeft(2, '0')}-${now.microsecondsSinceEpoch.toString().padLeft(2, '0')}";
    print("date::::::");
    //print(installtype);
    // print(e + DateTime.now().toString());
    await FirebaseFirestore.instance
        .collection('survey ASHP')
        .doc(Mycomponents.useremail + " " + DateTime.now().toString())
        .set({
      'install date': MyComponent.installdatecontroller, // John Doe
      // 'contact': "c", // Stokes and Sons
      'install type': MyComponent.installtypecontroller, // 42
      'Manpower': MyComponent.manpowercontroller,
      'Survey Date': MyComponent.surveydatecontroller,
      'Survey by': MyComponent.surveybycontroller,
      'Customer Name': MyComponent.customernamecontroller,
      'property adress': MyComponent.propertyaddresscontroller,
      'post code': MyComponent.postcodecontroller,
      'customer contact': MyComponent.customercontactcontroller,
      'email': MyComponent.emailcontroller,

      'parking': MyComponent.parkingController,
      'skip needed': MyComponent.skipNeedecontroller,
      'skip permit required': MyComponent.skipPermitrequiredController,
      'comments': MyComponent.commentsController,
      'boiler type': MyComponent.boilerTypeController,
      'boiler location': MyComponent.boilerLocationController,
      'Rip out': MyComponent.ripOutController,
      'comments1': MyComponent.comments2Controller,
      'cylinder': MyComponent.cylinderController,
      'cylinder location': MyComponent.cylinderLocationController,
      'Rip out2': MyComponent.ripOut2Controller,
      'comments2': MyComponent.comments3Controller,
      'Asbestos removal': MyComponent.abbestosremovalController,
      'comments3': MyComponent.comments4Controller,
      'Rip out Required': MyComponent.ripOutequiredController,

      'make and model': MyComponent.makeAndModelController,
      'Ashp location': MyComponent.ashpLocationcontroller,
      'do we need to build base': MyComponent.doweNeedToBuildABaseController,
      'base constructed with': MyComponent.baseConstructedWithController,
      'who building base': MyComponent.whoIsBuildingTheBaseController,
      'how many heating zones': MyComponent.howManyHeatingZonesController,
      'describe flow and routes': MyComponent.describeFlowController,
      'pipes needed': MyComponent.pipesAndLaggingController,
      'do we need trunking': MyComponent.doWeNeedTrunkingController,
      'do we need scaffold': MyComponent.doweNeedScaffoldController,
      'do we need genine lift': MyComponent.doWeNeedAGenieController,
      'describe condensate run': MyComponent.describeCondensateController,
      'any pump to replace': MyComponent.anyPumpsController,
      '25/1-8 system pump needed': MyComponent.system25PumpController,
      'any zone valve need to replace': MyComponent.anyZoneController,
      'what type of floor': MyComponent.whatTypeController,

      'cylinder make model siz': MyComponent.cylinderMakeController,
      'cylinder location2': MyComponent.cylinderLocationController,
      'lime scale reducer required': MyComponent.limeScaleController,
      'do we need build base': MyComponent.doWeController,
      'base constructed with2': MyComponent.baseConStructedController,
      'who is building base': MyComponent.whoIsController,
      'where do we run blow off D2/D1': MyComponent.whereDoController,
      'pipes need laging size': MyComponent.pipesController,
      'comments4': MyComponent.comments5Controller,

      'room': MyComponent.roomController,
      'size': MyComponent.sizeController,
      'where is room': MyComponent.whereController,
      'new location': MyComponent.newController,
      'pipe size': MyComponent.pipeSizeController,
      'total rads': MyComponent.totalRadsController,
      'how many cahrge': MyComponent.howManyToChangeController,
      'PDO we need to charge': MyComponent.pDoController,
      'how many trvs': MyComponent.howManyTrvsController,
      'how many loackshields': MyComponent.howManyLockshieldsController,
      'comments5': MyComponent.comments6Controller,

      'main fuse board loacation': MyComponent.mainFuseController,
      'board type': MyComponent.boardTypeController,
      'number of spare ways': MyComponent.numberOfSpareController,
      'type of fuse': MyComponent.typeofFuseController,
      'distance to Ashp': MyComponent.distanceToASHPController,
      'standard materials': MyComponent.standardMaterialsController,
      'comments6': MyComponent.comments7Controller,

      'any property info': MyComponent.anyPropertyController,
      'approx distance': MyComponent.approximateController,
      'loft hatch dimenson': MyComponent.loftHatchController,
      'loft boarded': MyComponent.loftBoardedController,
      'loft have light': MyComponent.loftHaveController,
    });
    setState(() {
      Fluttertoast.showToast(
          textColor: Color.fromARGB(255, 2, 6, 2),
          backgroundColor: Color.fromARGB(255, 79, 5, 148),
          msg: "survey Added succesfully", // message
          toastLength: Toast.LENGTH_SHORT, // length
          gravity: ToastGravity.CENTER, // location
          timeInSecForIosWeb: 3 // duration
          );
      //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //   content: Text("data post succesfully"),backgroundColor: Colors.amber,
      // ));
    });
    //ab=null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFEFEF),
        body: SingleChildScrollView(
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
                "REQUIRED PICTURES",
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
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: InkWell(
                  onTap: () {
                    dialog(context);
                  },
                  child: Container(
                    height: 50.h,
                    width: 190.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.green)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Add More Pictures ",
                          style: GoogleFonts.dmSans(
                              fontSize: 15.sp, fontWeight: FontWeight.w600),
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
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  print("surveydate");
                  print(MyComponent.surveydatecontroller);
                  SurveyASHP();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomBar()));
                },
                child: Container(
                  height: 46.h,
                  width: 193.w,
                  decoration: BoxDecoration(
                      color: Color(0xff42FF55),
                      borderRadius: BorderRadius.circular(11)),
                  child: Center(
                    child: Text(
                      "Done",
                      style: GoogleFonts.dmSans(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ));
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
                      getMultipleImagesGallery();
                    },
                    child: ListTile(
                      leading: Icon(Icons.photo_library_outlined),
                      title: Text('gallery'),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Future getMultipleImagesGallery() async {
      final List<XFile>? selectedImages = await
      _picker.pickMultiImage();
      if (selectedImages!.isNotEmpty) {
        imageFileList!.addAll(selectedImages);
      }
      print("Image List Length:" + imageFileList!.length.toString());
      setState((){});
      Navigator.pop(context);
  }
  Future getCameraImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      imageFileList!.add(pickedFile);
    }
    print("Image List Length:" + imageFileList!.length.toString());
    setState((){});
    Navigator.pop(context);
  }
  // Future getImageGalary() async {
  //   final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
  //   print('image selected');
  //
  //   setState(() {
  //     if (pickedFile != null) {
  //       _image = File(pickedFile.path);
  //       Navigator.pop(context);
  //       print('image setState selected');
  //     } else {
  //       print('no image selected');
  //     }
  //   });
  // }
}
