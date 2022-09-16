import 'package:boiler/Constants/constants.dart';
import 'package:boiler/view/CustomerSatisfication/customerSatisfication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BoilerPictures extends StatelessWidget {
  const BoilerPictures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("booo ki value...............${bool1}");
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
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
                "Boiler Pictures",
                style: GoogleFonts.dmSans(
                    fontSize: 27.sp, fontWeight: FontWeight.w500),
              )),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Text(
                    "Choose Files",
                    style: GoogleFonts.dmSans(
                        fontSize: 22.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>CompleteBoilerBenchMark()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 49.h,
                      width: 165.w,
                      decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                      child: Center(
                          child: Text(
                        "Flue Inside",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400, fontSize: 19),
                      )),
                    ),
                    Container(
                      height: 49.h,
                      width: 165.w,
                      decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                      child: Center(
                          child: Text(
                        "Pipe Runs",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400, fontSize: 19),
                      )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Flue External",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Gas Runs",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Boiler Fitted",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Previous Damage",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Data Badge",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Condensate Pipe",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Boiler Pipes",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Condensate Termination",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "CH Filter",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Vert flu",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Filter Serial No",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Gas meter",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "User Control",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Tightness Test",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Brickup",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "CPA readings",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Radiators Fitted (Add as many needed)",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 13),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Terbitity test",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "S/Y Plan",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Wiring Centre",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Pump",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 19),
                    )),
                  ),
                  Container(
                    height: 49.h,
                    width: 165.w,
                    decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                    child: Center(
                        child: Text(
                      "Add any more pics as required & name ",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 11),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              Visibility(
                visible: bool1 == 1,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Cylinder Files:",
                          style: GoogleFonts.dmSans(
                              fontSize: 22.sp, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 49.h,
                          width: 165.w,
                          decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                          child: Center(
                              child: Text(
                            "Cylinder location",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          )),
                        ),
                        Container(
                          height: 49.h,
                          width: 165.w,
                          decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                          child: Center(
                              child: Text(
                            "Multi valve",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400, fontSize: 19),
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 49.h,
                          width: 165.w,
                          decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                          child: Center(
                              child: Text(
                            "D1",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400, fontSize: 19),
                          )),
                        ),
                        Container(
                          height: 49.h,
                          width: 165.w,
                          decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                          child: Center(
                              child: Text(
                            "D2",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400, fontSize: 19),
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 49.h,
                          width: 165.w,
                          decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                          child: Center(
                              child: Text(
                            "Expo Vessel",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400, fontSize: 19),
                          )),
                        ),
                        Container(
                          height: 49.h,
                          width: 165.w,
                          decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                          child: Center(
                              child: Text(
                            "D2 Terminates",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400, fontSize: 19),
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => CustomerSatisfication()));
                },
                child: Container(
                  height: 46,
                  width: 193,
                  decoration: BoxDecoration(
                      color: Color(0xff42FF55),
                      borderRadius: BorderRadius.circular(11)),
                  child: Center(
                    child: Text(
                      "Save",
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
      ),
    );
  }
}
