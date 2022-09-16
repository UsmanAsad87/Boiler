import 'package:boiler/model/rbutton.dart';
import 'package:boiler/view/CustomerDetailForBoiler/CustomerDetailForBoiler.dart';
import 'package:boiler/view/RiskAssesment/RiskAssesmentForm1.dart';
import 'package:boiler/view/installMenuOfBoiler/installMenuOfBoiler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var role=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 260.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/Rectangle 79.png"))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150.h,
                    ),
                    Text(
                      "We’re your new Heating\n          Super heroes",
                      style: GoogleFonts.spaceGrotesk(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          color: Color(0xff232323)),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "With just a few simple steps",
                      style: GoogleFonts.spaceGrotesk(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          color: Color(0xff232323)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
                child: Text(
              "About Us",
              style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 27.sp,
                  color: Color(0xff232323)),
            )),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: Text(
                          "We’re the installer of\n        choice",
                          style: GoogleFonts.spaceGrotesk(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                              color: Color(0xff232323)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 169.h,
                        width: 221.w,
                        decoration: BoxDecoration(
                            color: Color(0xffBEFF97),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 30.h,
                                    width: 30.h,
                                    child: Image.asset(
                                        "assets/images/check-mark 1.png")),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                  "Worcester Besch Accredited",
                                  style: GoogleFonts.spaceGrotesk(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11.sp,
                                      color: Color(0xff232323)),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 30.h,
                                    width: 30.h,
                                    child: Image.asset(
                                        "assets/images/check-mark 1.png")),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                  "Manufacturer backed warranty",
                                  style: GoogleFonts.spaceGrotesk(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11.sp,
                                      color: Color(0xff232323)),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 30.h,
                                    width: 30.h,
                                    child: Image.asset(
                                        "assets/images/check-mark 1.png")),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                  "Finance options available*",
                                  style: GoogleFonts.spaceGrotesk(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11.sp,
                                      color: Color(0xff232323)),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 30.h,
                                    width: 30.h,
                                    child: Image.asset(
                                        "assets/images/check-mark 1.png")),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                  "Which Trusted Trader",
                                  style: GoogleFonts.spaceGrotesk(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11.sp,
                                      color: Color(0xff232323)),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 30.h,
                                    width: 30.h,
                                    child: Image.asset(
                                        "assets/images/check-mark 1.png")),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                  "	Access to grants",
                                  style: GoogleFonts.spaceGrotesk(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11.sp,
                                      color: Color(0xff232323)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 163.h,
                        width: 121.w,
                        child: Image.asset(
                            "assets/images/Screenshot 2022-08-07 011034 1.png"),
                      )
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerDetailForBoiler()));
              },
              child: Center(
                  child: Text(
                "Hydrogen blend ready boilers",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 17.sp,
                    color: Color(0xff35CFFF)),
              )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Divider(
              height: 1,
              color: Colors.black,
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
                child: Text(
              "Here's 3 simple steps to your new boiler",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 17.sp,
                  color: Colors.black),
            )),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 137.h,
              width: 339.w,
              decoration: BoxDecoration(
                color: Color(0xffC5DCFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "1.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 28.sp,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "We’ll give you a FREE no obligation",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "quote and arrange all the finance for you.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 137.h,
              width: 339.w,
              decoration: BoxDecoration(
                color: Color(0xffC5DCFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "2.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 28.sp,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "We’ll give you a FREE no obligation",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "quote and arrange all the finance for you.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 137.h,
              width: 339.w,
              decoration: BoxDecoration(
                color: Color(0xffC5DCFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "3.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 28.sp,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "We install your new boiler at a date to",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "suit you. Next day options available.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              height: 500.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffB8B8B8)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: Column(
                  children: [
                    SizedBox(height: 10.h,),
                    Center(
                        child: Text(
                          "Request a Call Back",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 25.sp,
                              color: Colors.white),
                        )),
                    SizedBox(height: 20.h,),

                    Row(
                      children: [
                        Text(
                          "Request a Call Back",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h,),

                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,

                        contentPadding: EdgeInsets.zero,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.zero

                        )
                      ),
                    ),
                    SizedBox(height: 20.h,),

                    Row(
                      children: [
                        Text(
                          "Your email (required)",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h,),

                    TextFormField(
                      decoration: InputDecoration(
                          filled: true,

                          contentPadding: EdgeInsets.zero,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.zero

                          )
                      ),
                    ),
                    SizedBox(height: 20.h,),

                    Row(
                      children: [
                        Text(
                          "Best contact number (required)",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h,),

                    TextFormField(
                      decoration: InputDecoration(
                          filled: true,

                          contentPadding: EdgeInsets.zero,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.zero

                          )
                      ),
                    ),
                    SizedBox(height: 30.h,),
                    Row(
                      children: [
                        InkWell(
                          onTap:(){
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>RiskAssesmentForm1()))
   ;                       },
                          child: Container(
                            height: 38.h,
                            width: 149.w,
                            decoration: BoxDecoration(
                              color: Color(0xff1246FF)
                            ),
                            child: Center(child: Text("Request Callback >",style: GoogleFonts.dmSans(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.white),)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
