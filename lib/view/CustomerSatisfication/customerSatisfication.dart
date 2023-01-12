import 'package:boiler/Constants/constants.dart';
import 'package:boiler/boilerdetailcontroller.dart';
import 'package:boiler/colors/common.dart';
import 'package:boiler/view/BoilerPictures/BoilerPicture.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:signature/signature.dart';

import '../BottomBar/BottomBar.dart';
import '../GlobalData.dart';

class CustomerSatisfication extends StatefulWidget {
  const CustomerSatisfication({Key? key}) : super(key: key);

  @override
  State<CustomerSatisfication> createState() => _CustomerSatisficationState();
}

class _CustomerSatisficationState extends State<CustomerSatisfication> {
  TextEditingController _date1 = TextEditingController();

  TextEditingController _date = TextEditingController();
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 2,
    penColor: Colors.grey,
    exportBackgroundColor: Colors.blue,
  );
  final SignatureController _controller1 = SignatureController(
    penStrokeWidth: 2,
    penColor: Colors.grey,
    exportBackgroundColor: Colors.blue,
  );

  BoilerDetail() async {
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
        .collection(' Boiler Customer Detail')
        .doc(Mycomponents.useremail + " " + DateTime.now().toString())
        .set({
      'Name': BoilerCustomerDetail.Name, // John Doe
      // 'contact': "c", // Stokes and Sons
      'Address': BoilerCustomerDetail.Address, // 42
      'postcode': BoilerCustomerDetail.PostCode,
      'Mobile number': BoilerCustomerDetail.MobileNum,
      'date': BoilerCustomerDetail.DAte,
      'boiler model no': BoilerCustomerDetail.BoilerModelNum,
      'kw size': BoilerCustomerDetail.kwsize,
      'location': BoilerCustomerDetail.Location,
      'model num': BoilerCustomerDetail.ModelNum,
      'size liter': BoilerCustomerDetail.SizeLiter,

      'location1': BoilerCustomerDetail.Location2,
      'property adress': BoilerCustomerDetail.PropertyAdress,
      'date of assesment': BoilerCustomerDetail.DatefAssesment,
      'assemment carried by': BoilerCustomerDetail.AssessmentCarreidout,
      'company email': BoilerCustomerDetail.CompanyEmail,
      'Addressboiler': BoilerCustomerDetail.Address,
      'postcodeboiler': BoilerCustomerDetail.PostCode2,
      'installer boiler': BoilerCustomerDetail.Installer,
      'installation date': BoilerCustomerDetail.InstallationDate,
      'original job discription': BoilerCustomerDetail.OriginalJobDiscription,
      'proposed variation': BoilerCustomerDetail.ProposedVariation,
      'upload pic boiler benchmark': " ",
      'Address boiler benchmark': BoilerCustomerDetail.Address2,
      'boiler make adn model benchmark':
          BoilerCustomerDetail.BoilerMakeandModel,
      'boiler serial no benchmark': BoilerCustomerDetail.BoilerSerialNo,
      'commisioned by benchmark': BoilerCustomerDetail.CommisionedBy,
      'company name benchmark': BoilerCustomerDetail.Companyname,
      'company email benchmark': BoilerCustomerDetail.CompanyEmail2,
      'company adress benchmark': BoilerCustomerDetail.companyAddress,
      'company telephone benchmark': BoilerCustomerDetail.telephoneNumber,
      'company comision date benchmark': BoilerCustomerDetail.commisiongDate,
      'optional building regulations benchmark':
          BoilerCustomerDetail.BuildingreregulationNotificationNumber,
      'what system cleaner used brand benchmark':
          BoilerCustomerDetail.systemcleanerbrand,
      'what system cleaner used product benchmark':
          BoilerCustomerDetail.systemcleanerproduct,
      'what ihibitor used product benchmark':
          BoilerCustomerDetail.inhibatorusedbrand,
      'what inhibitor used brand benchmark':
          BoilerCustomerDetail.inhibatorusedproduct,
      'if no what is central heating kw':
          BoilerCustomerDetail.centralheatingoutput,
      'dynamic gas init pressure mbar': BoilerCustomerDetail.dynamicgasmbar,
      'central heating flow temp': BoilerCustomerDetail.centralheatingflowtem,
      'central heating return temp':
          BoilerCustomerDetail.centralheatingreturntemp,
      'system corectly balanced yes':
          BoilerCustomerDetail.systemcorectlybalanced,
      'what type of scale reducer brand':
          BoilerCustomerDetail.typeofscalereduverbrand,
      'what type of scale reducer product':
          BoilerCustomerDetail.typeofscalereduverproduct,
      'dynmic gas inlet pressure at max':
          BoilerCustomerDetail.dynamicgasinletmbar,
      'cold wter inlet pressure': BoilerCustomerDetail.coldwaterinittempmbar,
      'hot water has been checked':
          BoilerCustomerDetail.hotwaterischeckedtemprature,
      'condessate dispossal at max rate co1':
          BoilerCustomerDetail.recordfollowingCO1,
      'condessate dispossal at max rate co2':
          BoilerCustomerDetail.recordfollowingCO2,
      'condessate dispossal at max rate co/co2':
          BoilerCustomerDetail.recordfollowingCO3,
      'condessate dispossal at min rate co1':
          BoilerCustomerDetail.recordfollowingCO3atminrate1,
      'condessate dispossal at min rate co2':
          BoilerCustomerDetail.recordfollowingCO3atminrate2,
      'condessate dispossal at min rate co3':
          BoilerCustomerDetail.recordfollowingCO3atminrate3,
      'complete form and upload pics complete cylinder bencmark uploadpic':
          BoilerCustomerDetail.completeylnderbencmarkpic1,
      'complete form and upload pics complete cylinder bencmark uploadpic2':
          BoilerCustomerDetail.completecylinderbenhmarkuploadpic2,
      'post installation customer name': BoilerCustomerDetail.customername,
      'post installation Address': BoilerCustomerDetail.Adress2,
      'post installation postcode': BoilerCustomerDetail.postcode3,
      'post installation installation': BoilerCustomerDetail.installer,
      'post installation date': BoilerCustomerDetail.installtiondate,
      'post installation comment1': BoilerCustomerDetail.radiatorcheckcomment,
      'post installation comment2': BoilerCustomerDetail.radiatorcheckkitchen,
      'post installation comment3': BoilerCustomerDetail.diningroomcomment,
      'post installation comment4': BoilerCustomerDetail.hallwaycomment,
      'post installation comment5': BoilerCustomerDetail.bathroomcomment,
      'post installation comment6': BoilerCustomerDetail.landingcomment,
      'post installation comment7': BoilerCustomerDetail.bedroomcomment,
      'post installation comment8': BoilerCustomerDetail.bedroom2comment,

      'post installation comment9': BoilerCustomerDetail.bedroom3comment,

      'post installation comment10': BoilerCustomerDetail.radiatortrvscomment,

      'post installation comment11': BoilerCustomerDetail.wasteremovalcomment,

      'post installation comment12': BoilerCustomerDetail.wasteremovalcomment,

      'post installation radiator trvs comment':
          BoilerCustomerDetail.radiatortrvscomment,

      'post installation waste removal comment':
          BoilerCustomerDetail.wasteremovalcomment,

      'customer satisfaction questionare comment1':
          BoilerCustomerDetail.customersatifactionquestionpart2comment,

      'customer satisfaction questionare comment 2':
          BoilerCustomerDetail.customersatifactionquestionpart2comment2,
    });
    setState(() {
      Fluttertoast.showToast(
          textColor: Color.fromARGB(232, 76, 13, 192),
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
  boilerdetailcontroller _controoler = new boilerdetailcontroller();
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
              SizedBox(
                height: 30.h,
              ),
              Center(
                  child: Text(
                "Customer Satisfaction Questionnaire\n(Part 2)",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                    fontSize: 22.sp, fontWeight: FontWeight.w500),
              )),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Container(
                    width: 300.w,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                    child: Text(
                  "Out of 10, how would you rate your customer journey?",
                  style: GoogleFonts.dmSans(
                      fontSize: 18.sp, fontWeight: FontWeight.w400),
                )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.customersatisfactioncomment1,
                  maxLines: 5,
                  decoration: InputDecoration(
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
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.customersatisfactioncomment2,
                  maxLines: 5,
                  decoration: InputDecoration(
                      hintText: "Comments",
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
                "Declaration",
                style: GoogleFonts.dmSans(
                    fontSize: 22.sp, fontWeight: FontWeight.w500),
              )),
              Center(
                child: Container(
                    width: 120.w,
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
                  " I confirm that I have completed the above questions accurately and I am happy for this document to be used for internal auditing purposes.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp, fontWeight: FontWeight.w500),
                )),
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Customer Signature:",
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
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Signature(
                    controller: _controller1,
                    height: 100,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Date:",
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
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.customersatisfactiondate1,
                  // controller: _date,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    filled: true,
                    fillColor: Colors.white,
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                  ),
                  // keyboardType: TextInputType.text,
                  readOnly: false,
                  onTap: () async {
                    DateTime? pickeddate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2050));
                    if (pickeddate != null) {
                      setState(() {
                        _date.text =
                            DateFormat("yyyy-mm-dd").format(pickeddate);
                      });
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Installer Signature:",
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
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Signature(
                    controller: _controller,
                    height: 100,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Date:",
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
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.customersatisfactiondate2,

                  //  controller: _date1,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    filled: true,
                    fillColor: Colors.white,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white, width: 1),
                    ),
                  ),
                  //   keyboardType: TextInputType.text,
                  readOnly: false,
                  onTap: () async {
                    DateTime? pickeddate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2050));
                    if (pickeddate != null) {
                      setState(() {
                        _date1.text =
                            DateFormat("dd-mm-yyyy").format(pickeddate);
                      });
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 58.0),
                child: InkWell(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      BoilerCustomerDetail
                              .customersatifactionquestionpart2comment =
                          _controoler.customersatisfactioncomment1.text;
                      BoilerCustomerDetail
                              .customersatifactionquestionpart2comment2 =
                          _controoler.customersatisfactioncomment2.text;

                          BoilerDetail();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  show == 0 ? BottomBar() : BoilerPictures()));
                    } else {
                      common.toastShow("Please Fill All Fields");
                    }
                  
                  },
                  child: Container(
                    height: 46.h,
                    width: 193.w,
                    decoration: BoxDecoration(
                        color: Color(0xff42FF55),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: show == 0
                          ? Text(
                              "Save",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            )
                          : Text(
                              "Take Compulsary Picks",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
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
