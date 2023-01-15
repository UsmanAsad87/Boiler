import 'package:boiler/model/boilerModel.dart';
import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:boiler/provider/boiler_provider.dart';
import 'package:boiler/view/BottomBar/BottomBar.dart';
import 'package:boiler/view/GlobalData.dart';
import 'package:boiler/view/surveycontroller.dart';
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
  File? _image;
  File? _image1;

  // Survey(String date,String installtype,String manpower ,String surveydate,String customer,String propertyadress,String postcode,String customercontact,String fueltype,String limescale,String makemodel1,String boilertype1,String boilerposition1,String boilerlocation1,String existngheatingcongrols,String asbestosremovasl,String comments,String makemodel2,String boilertype2,String boilerposition2,String boilerlocation2,String flueorintaion,String plumekitrequired,String newheatingcontrols,String newhaetingcontrollocation,String gasupgrade,String newcondensate,String newpump,String newzone,String isbrickrequied,String newradiatortvandlockshield,String gas,String gfflowreturn,String hotandcold,String condensate,String access,String ladders,String aditionalnotes,String whatelectritionneedtodo,String whatcontrolarewefitting,) async {

  SurveyBoiler() async {
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
        .collection('survey Boiler')
        .doc(Mycomponents.useremail+ " " + DateTime.now().toString())
        .set({
      'Install date': Mycomponents.installdate, // John Doe
      // 'contact': "c", // Stokes and Sons
      'INstall type': Mycomponents.installtype, // 42
      'Manpower': Mycomponents.manpower,
      'Survey Date': Mycomponents.surveydate,
      'Customer aName': Mycomponents.customername,
      'property adress': Mycomponents.propertyadress,
      'post code': Mycomponents.postcode,
      'customer contact': Mycomponents.customerconatct,
      'fuel type': Mycomponents.fueltype,
      'lime scale reducer': Mycomponents.limescale,
      'Make Model': Mycomponents.makemodel1,
      'boiler type': Mycomponents.boilertypr1,
      'boiler position1': Mycomponents.boilerposition1,
      'boiler location': Mycomponents.boilerlocation1,
      'existing heating controls': Mycomponents.existingheating,
      'asbestos removal': Mycomponents.asbestosRemoval,
      'comments': Mycomponents.comments,
      'make model': Mycomponents.makemodel2,
      'boiler type2': Mycomponents.boilertype2,
      'boiler position2': Mycomponents.boilerposition2,
      'flue orientation': Mycomponents.flueorintaion,
      'plume kit required': Mycomponents.plumekitrequired,
      'new heating controls': Mycomponents.newheatingcontrols,
      'new heating controls location': Mycomponents.newhaetingcontrollocation,
      'new pump installed': Mycomponents.newpump,
      'new zone valve': Mycomponents.newzone,
      'brick up picked': Mycomponents.isbrickup,
      'new radiator tv lock shield': Mycomponents.newradiatortv_lockshiled,
      'gas': Mycomponents.gas,
      'gflow': Mycomponents.gfflowandreturn,
      'hot and cold': Mycomponents.hotaandcold,
      'condensate': Mycomponents.condesate,
      'access': Mycomponents.access,
      'ladders': Mycomponents.ladders,
      'additional notes': Mycomponents.additionalnotes,
      'what electrition need to do': Mycomponents.whatdoeselectritionneedtodo,
      'what control are we fitting': Mycomponents.whatcontrolarewefitting,
    });
    setState(() {
      Fluttertoast.showToast(
          textColor: Color.fromARGB(232, 0, 10, 0),
          backgroundColor: Color.fromARGB(255, 235, 234, 236),
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

  final formkey = GlobalKey<FormState>();
  surveycontroller _controoler = new surveycontroller();
  @override
  Widget build(BuildContext context) {

    BoilerModel boilerModel =
        Provider.of<BoilerProvider>(context).getBoilerObject;
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
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // Survey("ff",_controoler.date.text,_controoler.installtypecontroller.text,_controoler.manpowercontroller.text,_controoler.date1.text,_controoler.customercontroller.text,_controoler.propertycontroller.text,_controoler.postcodecontroller.text,_controoler.contactcontroller.text,_controoler.fueltypecontroller.text,_controoler.limescalecontroller.text,_controoler.makemodel1controller.text,_controoler.boilertypecontroller.text,_controoler.boilerPositioncontroller.text,_controoler.boilerocationcontroller.text,_controoler.existingheatingcontroller.text,_controoler.asbestosRemovalcontroller.text,_controoler.comentscontroller.text,_controoler.makemodel1controller.text,_controoler.boilertype2controller.text,_controoler.boilerlocation2controller.text,_controoler.flueorientationcontroller.text,_controoler.plumekitcontroller.text,_controoler.newheatingcontrolcontroller.text,_controoler.newheatingcontrollocationcontroller.text,_controoler.gasupgradecontroller.text,_controoler.newcondesatelocationcontroller.text,_controoler.newpumptobeinstalledcontroller.text,_controoler.newzonevaluecontroller.text,_controoler.isbickuprequiredcontroller.text,_controoler.newradiatortv_lockshiledcontroller.text,_controoler.gascontroller.text,_controoler.gfflowandreturncontroller.text,_controoler.hotandcoldcontroller.text,_controoler.condensatecontroller.text,_controoler.accesscontroller.text,_controoler.ladderscontroller.text,_controoler.additionalnotescontroller.text,_controoler.whatdoeselectritionneedtodocontroller.text,_controoler.whatcontrolsarewefittingcontroller.text);
                  SurveyBoiler();
                  Navigator.of(context).pushAndRemoveUntil(
                      //   Survey(_.text, _controoler.installtypecontroller.text, _controoler.manpowercontroller.text, _date1.text, _controoler.customercontroller.text);

                      MaterialPageRoute(builder: (context) => BottomBar()),
                      (route) => false);
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
                      title: Text('gallery'),
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
