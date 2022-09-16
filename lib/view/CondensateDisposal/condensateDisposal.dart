import 'package:boiler/view/PostIInstallation/postInstallation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/signature.dart';


class CondensateDisposal extends StatefulWidget {
  const CondensateDisposal({Key? key}) : super(key: key);

  @override
  State<CondensateDisposal> createState() => _CondensateDisposalState();
}

class _CondensateDisposalState extends State<CondensateDisposal> {
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
        child: Padding(
          padding: const EdgeInsets.all(18.0),
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
                "Condensate Disposal",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                    fontSize: 22.sp, fontWeight: FontWeight.w500),
              )),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Container(
                    width: 220.w,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  " I confirm that I have completed the above questions accurately and I am happy for this document to be used for internal auditing purposes.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 46.h,
                    width: 148,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    child: Center(
                        child: Text(
                      "Yes",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 17),
                    )),
                  ),
                  Container(
                    height: 46.h,
                    width: 148,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      "No",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 17),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    "Point of termination",
                    style: GoogleFonts.dmSans(
                        fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 46.h,
                    width: 148,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    child: Center(
                        child: Text(
                      "Internal",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 17),
                    )),
                  ),
                  Container(
                    height: 46.h,
                    width: 148,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      "External (only where internal termination impractical)",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 10),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    "Method of disposal",
                    style: GoogleFonts.dmSans(
                        fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 46.h,
                    width: 148,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    child: Center(
                        child: Text(
                      "Gravity",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 17),
                    )),
                  ),
                  Container(
                    height: 46.h,
                    width: 148,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      "Pumped",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 17),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
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
                "All Installation",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                    fontSize: 22.sp, fontWeight: FontWeight.w500),
              )),
              Center(
                child: Container(
                    width: 150.w,
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
                  Text(
                    "Record the following",
                    style: GoogleFonts.dmSans(
                        fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    "At max rate:",
                    style: GoogleFonts.dmSans(
                        fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "CO",
                    fillColor: Colors.white,
                    filled: true,
                    suffixText: "ppm",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "CO",
                    fillColor: Colors.white,
                    filled: true,
                    suffixText: "ppm",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "CO/co2",
                    fillColor: Colors.white,
                    filled: true,
                    suffixStyle: TextStyle(color: Colors.black),
                    suffixText: "Ratio",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    "At min rate (where possible)",
                    style: GoogleFonts.dmSans(
                        fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "CO",
                    fillColor: Colors.white,
                    filled: true,
                    suffixText: "ppm",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "CO",
                    fillColor: Colors.white,
                    filled: true,
                    suffixText: "ppm",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "CO/co2",
                    fillColor: Colors.white,
                    filled: true,
                    suffixStyle: TextStyle(color: Colors.black),
                    suffixText: "Ratio",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Where possible, has a flue integrity check been undertaken in accordance with manufacturers’ instructions, and readings are correct?",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 46.h,
                    width: 148,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    child: Center(
                        child: Text(
                      "Yes",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 17),
                    )),
                  ),
                  Container(
                    height: 46.h,
                    width: 148,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      "No",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 17),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "The operation of the boiler and system controls have been demonstrated to and understood by the customer?",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 46.h,
                    width: 148,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    child: Center(
                        child: Text(
                      "Yes",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 17),
                    )),
                  ),
                  Container(
                    height: 46.h,
                    width: 148,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      "No",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 17),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "The manufacturers’ literature, including Benchmark Checklist and Service Record, has been explained and left with the customer?",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.dmSans(
                      fontSize: 12.sp, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 46.h,
                    width: 148,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    child: Center(
                        child: Text(
                      "Yes",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 17),
                    )),
                  ),
                  Container(
                    height: 46.h,
                    width: 148,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      "No",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 17),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Commissioning Engineer’s signature",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.dmSans(
                          fontSize: 12.sp, fontWeight: FontWeight.w500),
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
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Customer’s signature\n(To confirm satisfactory demonstration and receipt of\nmanufacturers’ literature)",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.dmSans(
                          fontSize: 12.sp, fontWeight: FontWeight.w500),
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
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("Upload Picture")),
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
                height: 10.h,
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("Upload Picture")),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PostInstallation()));
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

              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
