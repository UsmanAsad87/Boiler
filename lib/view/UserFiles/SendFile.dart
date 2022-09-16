import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SendFile extends StatefulWidget {
  const SendFile({Key? key}) : super(key: key);

  @override
  State<SendFile> createState() => _SendFileState();
}

class _SendFileState extends State<SendFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
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
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/person.png'))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      ' File:\n',
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 24.sp),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        hintText: "Put Pdf or Excel file",
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(17),
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      ' Email:\n',
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 24.sp),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        hintText: "",
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(17),
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      ' Whatsapp No:\n',
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400, fontSize: 24.sp),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        hintText: "",
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(17),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 54.h,
                  width: 130.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff57FD53)),
                  child: Center(
                    child: Text(
                      "Send",
                      style: GoogleFonts.dmSans(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
