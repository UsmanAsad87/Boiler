
import 'dart:typed_data';
import 'package:boiler/firebase_repository/ASHP_methods.dart';
import 'package:boiler/firebase_repository/boiler_methods.dart';
import 'package:boiler/model/ASHPModel.dart';
import 'package:boiler/model/boilerModel.dart';
import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:boiler/provider/ASHPprovider.dart';
import 'package:boiler/provider/boiler_provider.dart';
import 'package:boiler/utils/loader.dart';
import 'package:boiler/utils/toast.dart';
import 'package:boiler/view/BottomBar/BottomBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class BoilerRequiredPicture extends StatefulWidget {
  const BoilerRequiredPicture({Key? key}) : super(key: key);

  @override
  State<BoilerRequiredPicture> createState() => _BoilerRequiredPictureState();
}

class _BoilerRequiredPictureState extends State<BoilerRequiredPicture> {
  final ImagePicker _picker = ImagePicker();
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];
  List<Uint8List>? imageList = [];
  File? _image;
  File? _image1;

  bool _loading=false;

  @override
  Widget build(BuildContext context) {
    BoilerModel boilerModel= Provider.of<BoilerProvider>(context).getBoilerObject;
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
                height: 15.h,
              ),
              imageList!.isNotEmpty?
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: imageList!.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 18.w),
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
                              image: DecorationImage(
                                image: MemoryImage(imageList![index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  })
                  :SizedBox(),
              SizedBox(height: 20.h,),
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
                        border: Border.all(width: 1, color: Colors.green)
                    ),
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
                onTap: () async {
                  setState(() {
                    _loading=true;
                  });
                  List<String> imgUrls=[];
                  if(imageFileList!.isNotEmpty) {
                    imgUrls=await BoilerMethods().uploadImages(imageFileList!);
                    print("urls"+imgUrls.toString());
                    boilerModel= boilerModel.copyWith(
                      images: imgUrls,
                    );
                    print(boilerModel.toJson().toString().substring(602,));
                    Provider.of<BoilerProvider>(context,listen: false).setBoilerObject(boilerModel);
                    String res= await BoilerMethods().createBoilerSurvey(context: context);
                    showToast(res);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => BottomBar()));
                  }else{
                    showToast("Add Required Images");
                  }
                  setState(() {
                    _loading=false;
                  });
                },
                child: Container(
                  height: 46.h,
                  width: 193.w,
                  decoration: BoxDecoration(
                      color: Color(0xff42FF55),
                      borderRadius: BorderRadius.circular(11)),
                  child: Center(
                    child: _loading?spinKit(color: Colors.black):Text(
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
    imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
      for (int i=0;i<selectedImages.length;i++){
        imageList!.add(await selectedImages[i].readAsBytes());
      }
    }
    print("Image List Length:" + imageFileList!.length.toString());

    setState((){});
    Navigator.pop(context);
  }
  Future getCameraImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      imageFileList!.add(pickedFile);
      imageList!.add(await pickedFile.readAsBytes());
    }
    print("Image List Length:" + imageFileList!.length.toString());
    setState((){});
    Navigator.pop(context);
  }
}
