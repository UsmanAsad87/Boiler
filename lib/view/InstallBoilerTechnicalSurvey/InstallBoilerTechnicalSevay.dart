import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:boiler/view/ExistingBoilerSystemDetails/ExistingBoilerSystemDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class InstallBoilerTechnicalSevay extends StatefulWidget {
  const InstallBoilerTechnicalSevay({Key? key}) : super(key: key);

  @override
  State<InstallBoilerTechnicalSevay> createState() => _InstallBoilerTechnicalSevayState();
}

class _InstallBoilerTechnicalSevayState extends State<InstallBoilerTechnicalSevay> {

  TextEditingController _date =TextEditingController();
  TextEditingController _date1=TextEditingController();
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
                  readOnly: false, keyboardType: TextInputType.text),
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
                  readOnly: false, keyboardType: TextInputType.text),
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

                  controller: _date1,
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
                        _date1.text= DateFormat("yyyy-mm-dd").format(pickeddate);
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
              CustomTextFormFieldWithPrefix4(
                  readOnly: false, keyboardType: TextInputType.text),
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
                  readOnly: false, keyboardType: TextInputType.text),
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
                  readOnly: false, keyboardType: TextInputType.text),
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
              CustomTextFormFieldWithPrefix4(
                  readOnly: false, keyboardType: TextInputType.text),
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
              CustomTextFormFieldWithPrefix4(
                  readOnly: false, keyboardType: TextInputType.text),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                height: 30.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ExistingBoilerSystemDetails()));
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
        ));
  }
}
