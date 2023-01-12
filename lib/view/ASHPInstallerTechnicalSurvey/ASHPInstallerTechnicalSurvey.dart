import 'package:boiler/model/ASHPModel.dart';
import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:boiler/provider/ASHPprovider.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/propertyDetails.dart';
import 'package:boiler/view/GlobalData.dart';
import 'package:boiler/view/ServeyASHPController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:boiler/colors/common.dart';
import 'package:provider/provider.dart';

class ASHPInstallerTechnicalSurvey extends StatefulWidget {
  const ASHPInstallerTechnicalSurvey({Key? key}) : super(key: key);

  @override
  State<ASHPInstallerTechnicalSurvey> createState() =>
      _ASHPInstallerTechnicalSurveyState();
}

class _ASHPInstallerTechnicalSurveyState
    extends State<ASHPInstallerTechnicalSurvey> {
  final formkey = GlobalKey<FormState>();
  ASHPsurveycontroller _controoler = new ASHPsurveycontroller();

  void initState() {
    ASHPModel ashpModel=ASHPModel();
    print(ashpModel.toJson());
    //ASHPProvider ashpProvider = Provider.of(context, listen: false);
    //ashpProvider.setASHPObject(ashpModel);

    super.initState();
  }



  TextEditingController _date = TextEditingController();
  TextEditingController _date1 = TextEditingController();
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "ASHP\n TECHNICAL SURVEY",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                          fontSize: 27.sp, fontWeight: FontWeight.w500),
                    )),
                  ],
                ),
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
                    controller: _controoler.installdatecontroller,
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
                          _controoler.installdatecontroller.text= DateFormat("yyyy-mm-dd").format(pickeddate);
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
                CustomTextFormFieldWithPrefix4(
                  readOnly: false,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.installtypecontroller,
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
                CustomTextFormFieldWithPrefix4(  
                   keyboardType: TextInputType.text,                  
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.manpowercontroller,
                  

                  readOnly: false,),
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
                    
                   controller: _controoler.surveydatecontroller,
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
                          _controoler.surveydatecontroller.text= DateFormat("yyyy-mm-dd").format(pickeddate);
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
                        "Survey by: ",
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
                    keyboardType: TextInputType.text,
                    validator: (value) {
                     if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.surveybycontroller,
                    readOnly: false,),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Center(
                    child: Text(
                  "CUSTOMER / PROPERTY\n              DETAILS",
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
                CustomTextFormFieldWithPrefix4(
                   keyboardType: TextInputType.text,
                   validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.customernamecontroller,
                    readOnly: false,),
                SizedBox(
                  height: 10.h,
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
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
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
                CustomTextFormFieldWithPrefix4(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.postcodecontroller,
          
                  //  keyboardType: TextInputType.text,
                  readOnly: false,),
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
                CustomTextFormFieldWithPrefix4(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.contactcontroller,
          
                  //  keyboardType: TextInputType.text,
                  readOnly: false,),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Email Address",
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
                      keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Cannot Be Empty';
                    }
                    return null;
                  },
                  controller: _controoler.emailcontroller,
          
                  //  keyboardType: TextInputType.text,
                  readOnly: false,),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  height: 30.h,
                ),
                InkWell(
                  onTap: () {
                    if(formkey.currentState!.validate()){
                      ASHPModel model34 = ASHPModel();
                      Provider.of<ASHPProvider>(context,listen: false).setASHPObject(model34);
                      MyComponent.installdatecontroller = _controoler.installdatecontroller.text;
                      MyComponent.installtypecontroller = _controoler.installtypecontroller.text;
                      MyComponent.manpowercontroller = _controoler.manpowercontroller.text;
                    //  MyComponent.mancontroller = _controoler.manpowercontroller.text;
                      MyComponent.surveydatecontroller = _controoler.surveydatecontroller.text;
                      MyComponent.surveybycontroller = _controoler.surveybycontroller.text;
                      MyComponent.customernamecontroller = _controoler.customernamecontroller.text;
                      MyComponent.propertyaddresscontroller = _controoler.propertycontroller.text;
                      MyComponent.postcodecontroller = _controoler.postcodecontroller.text;
                      MyComponent.customercontactcontroller = _controoler.contactcontroller.text;
                      MyComponent.emailcontroller = _controoler.emailcontroller.text;

                      ASHPModel model = Provider.of<ASHPProvider>(context,listen: false).getASHPObject;


                     model= model.copyWith(
                          installDate : _controoler.installdatecontroller.text,
                          installType: _controoler.installtypecontroller.text,
                          manPower:_controoler.manpowercontroller.text,
                          surveydate: _controoler.surveydatecontroller.text,
                          surveyby: _controoler.surveybycontroller.text,
                          customername: _controoler.customernamecontroller.text,
                          propertyaddress: _controoler.propertycontroller.text,
                          postcode: _controoler.postcodecontroller.text,
                          customercontact:_controoler.contactcontroller.text,
                          email:_controoler.emailcontroller.text,
                      );
                      print(model.toJson());
                      Provider.of<ASHPProvider>(context,listen: false).setASHPObject(model);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PropertyDetails()));}
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
