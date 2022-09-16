import 'package:boiler/view/BottomBar/BottomBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ElectricalWorks extends StatefulWidget {
  @override
  State<ElectricalWorks> createState() => _ElectricalWorksState();
}

class _ElectricalWorksState extends State<ElectricalWorks> {
  var yes = 1;

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
            SizedBox(
              height: 30.h,
            ),

            Center(
                child: Text(
              "ELECTRICAL WORKS",
              style: GoogleFonts.dmSans(
                  fontSize: 27.sp, fontWeight: FontWeight.w500),
            )),
            Center(
              child: Container(
                  width: 250.w,
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    "Electrician required on site:",
                    style: GoogleFonts.dmSans(
                        fontSize: 15.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      yes = 1;
                    });
                  },
                  child: Container(
                    height: 46.h,
                    width: 148,
                    decoration: yes == 1
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xff42FF55))
                        : BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white),
                    child: Center(
                        child: Text(
                      "Yes",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 17),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      yes = 2;
                    });
                  },
                  child: Container(
                    height: 46.h,
                    width: 148,
                    decoration: yes == 2
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xff42FF55))
                        : BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white),
                    child: Center(
                        child: Text(
                      "No",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 17),
                    )),
                  ),
                )
              ],
            ),

            SizedBox(
              height: 30.h,
            ),

            Center(
                child: Text(
              "What does the electrician\nneed to do",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                  fontSize: 27.sp, fontWeight: FontWeight.w500),
            )),
            Center(
              child: Container(
                  width: 300.w,
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  )),
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


            /////////
            SizedBox(
              height: 30.h,
            ),

            Center(
                child: Text(
              "What controls are we fitting",
              style: GoogleFonts.dmSans(
                  fontSize: 27.sp, fontWeight: FontWeight.w500),
            )),
            Center(
              child: Container(
                  width: 330.w,
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  )),
            ),

            SizedBox(
              height: 20.h,
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
              height: 20.h,
            ),


            InkWell(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => BottomBar()),
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
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
