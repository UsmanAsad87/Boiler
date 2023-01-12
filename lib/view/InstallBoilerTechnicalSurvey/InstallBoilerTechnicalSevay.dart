import 'package:boiler/colors/common.dart';
import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:boiler/view/ExistingBoilerSystemDetails/ExistingBoilerSystemDetails.dart';
import 'package:boiler/view/GlobalData.dart';
import 'package:boiler/view/surveycontroller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class InstallBoilerTechnicalSevay extends StatefulWidget {
  const InstallBoilerTechnicalSevay({Key? key}) : super(key: key);

  @override
  State<InstallBoilerTechnicalSevay> createState() => _InstallBoilerTechnicalSevayState();
}

class _InstallBoilerTechnicalSevayState extends State<InstallBoilerTechnicalSevay> {
  final formkey = GlobalKey<FormState>();
  surveycontroller _controoler = new surveycontroller();
   void initState() {
    // TODO: implement initState
    super.initState();
    print('Checking -------> }');
  }

  // TextEditingController _date =TextEditingController();
  // TextEditingController _date1=TextEditingController();
//     Survey(String date,String installtype,String manpower ,String surveydate,String customer,) async {
//     setState(() {
//       print("1");
//     });
//     DateTime now = DateTime.now();
// //String c=e.DateTime.now();
//     String convertedDateTime =
//         "${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}-${now.minute.toString().padLeft(2, '0')}-${now.microsecondsSinceEpoch.toString().padLeft(2, '0')}";
//     print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
//     // print(e + DateTime.now().toString());
//     await FirebaseFirestore.instance
//         .collection('survey')
//         .doc("e" + " " + DateTime.now().toString())
//         .set({
//       'Install date':date , // John Doe
//       // 'contact': "c", // Stokes and Sons
//       'INstall type': installtype, // 42
//       'Manpower': manpower,
//       'Survey Date': surveydate,
//       'Customer aName': customer,

     
//     });
//     setState(() {
//       Fluttertoast.showToast(
//           textColor: Color.fromARGB(255, 2, 6, 2),
//           backgroundColor: Colors.grey,
//           msg: "survey Added succesfully", // message
//           toastLength: Toast.LENGTH_SHORT, // length
//           gravity: ToastGravity.CENTER, // location
//           timeInSecForIosWeb: 3 // duration
//           );
//       //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       //   content: Text("data post succesfully"),backgroundColor: Colors.amber,
//       // ));
//     });
//     //ab=null;
//   }

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
                  "BOILER\nTECHNICAL SURVEY  ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 27.sp, fontWeight: FontWeight.w500),
                )),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Container(
                      width: 260.w,
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      )),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                    child: Text(
                  "Survey Detail",
                  style: GoogleFonts.dmSans(
                      fontSize: 27.sp, fontWeight: FontWeight.w500),
                )),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Install Date:",
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
          
                    controller: _controoler.date,
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
                          _controoler.date.text= DateFormat("yyyy-mm-dd").format(pickeddate);
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Install Type:",
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
                  controller: _controoler.installtypecontroller,
          
                  //  keyboardType: TextInputType.text,
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
                        "Manpower:",
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
                  controller: _controoler.manpowercontroller,
          
                  //  keyboardType: TextInputType.text,
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
                        "Survey Date",
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
          
                    controller: _controoler.date1,
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
                          _controoler.date1.text= DateFormat("yyyy-mm-dd").format(pickeddate);
                        });
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Center(
                    child: Text(
                  "CUSTOMER / PROPERTY\n               DETAILS",
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
                CustomTextFormFieldWithPrefix4(keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.customercontroller,
          
                  //  keyboardType: TextInputType.text,
                  readOnly: false,
                 //   readOnly: false, keyboardType: TextInputType.text
                    
                    ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Property Address:",
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
                  child: TextFormField(keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.propertycontroller,
          
                  //  keyboardType: TextInputType.text,
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
                        "Post Code:",
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
                  controller: _controoler.postcodecontroller,
          
                  //  keyboardType: TextInputType.text,
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
                        "Customer Contact Number(s):",
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
                  controller: _controoler.contactcontroller,
          
                  //  keyboardType: TextInputType.text,
                  readOnly: false,
                 //   readOnly: false, keyboardType: TextInputType.text
                 ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Fuel Type:",
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
                  controller: _controoler.fueltypecontroller,
          
                  //  keyboardType: TextInputType.text,
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
                        "Lime Scale Reducer Required?",
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
                  controller: _controoler.limescalecontroller,
          
                  //  keyboardType: TextInputType.text,
                  readOnly: false,
                   // readOnly: false, keyboardType: TextInputType.text
                    ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: 30.h,
                ),
                InkWell(
                  onTap: () {//print(_controoler.emailcontroller.text);print( _controoler.passcontroller);
                     
                              //print(_controoler.emailcontroller.toString() + _controoler.usrnamecontroller.toString() +_controoler.passcontroller.toString());
                              if (formkey.currentState!.validate()) {
                                print(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");
                                Mycomponents.installdate=_controoler.date.text;
                                Mycomponents.installtype=_controoler.installtypecontroller.text;
                                Mycomponents.manpower=_controoler.manpowercontroller.text;
                                Mycomponents.surveydate=_controoler.date1.text;
                                Mycomponents.customername=_controoler.customercontroller.text;
                                Mycomponents.propertyadress=_controoler.propertycontroller.text;
                                Mycomponents.postcode=_controoler.postcodecontroller.text;
                                Mycomponents.customerconatct=_controoler.contactcontroller.text;
                                Mycomponents.fueltype=_controoler.fueltypecontroller.text;
                                Mycomponents.limescale=_controoler.limescalecontroller.text;
                                print(Mycomponents.installdate);
                                print("hhhhhhhhhh");
                                print(_controoler.date.text);
                              //  _controoler.signin();            }
                           //   Survey(_.text, _controoler.installtypecontroller.text, _controoler.manpowercontroller.text, _date1.text, _controoler.customercontroller.text);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExistingBoilerSystemDetails()));
                                
                              } else {
                                common.toastShow("Please Fill All Fields");
                              }
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => ExistingBoilerSystemDetails()));
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
