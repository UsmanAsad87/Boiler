import 'package:boiler/view/BoilerPictures/BoilerPicture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:signature/signature.dart';

import '../BottomBar/BottomBar.dart';

class CustomerSatisfication extends StatefulWidget {
  const CustomerSatisfication({Key? key}) : super(key: key);

  @override
  State<CustomerSatisfication> createState() => _CustomerSatisficationState();
}

class _CustomerSatisficationState extends State<CustomerSatisfication> {

  TextEditingController _date1 =TextEditingController();

  TextEditingController _date =TextEditingController();
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
                      _date1.text= DateFormat("dd-mm-yyyy").format(pickeddate);
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BoilerPictures()));
                },
                child: Container(
                  height: 46.h,
                  width: 193.w,
                  decoration: BoxDecoration(
                      color: Color(0xff42FF55),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
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
            InkWell(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => BottomBar()),
                        (route) => false
                );
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
                  'Generate\nMaster File',
                  style: GoogleFonts.dmSans(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
