import 'package:boiler/model/button.dart';
import 'package:boiler/model/constants.dart';
import 'package:boiler/view/homeScreen/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 42.h,
                    width: 42.w,
                    decoration: BoxDecoration(
                      color: Color(0xff42FF55),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Center(
              child: Text(
            "Engineer Details",
            style: GoogleFonts.spaceGrotesk(
                fontWeight: FontWeight.w700,
                fontSize: 30.sp,
                color: Color(0xff232323)),
          )),
          SizedBox(
            height: 40.h,
          ),
          CustomTextFormFieldWithPrefix(
            keyboardType: TextInputType.text,
            readOnly: false,
            hintText: "Name",
            label: "Name",
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFormFieldWithPrefix(
            keyboardType: TextInputType.text,
            readOnly: false,
            hintText: "Gassafe No:",
            label: "Gassafe No",
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFormFieldWithPrefix(
            keyboardType: TextInputType.text,
            readOnly: false,
            hintText: "G3 No:",
            label: "G3 No",
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFormFieldWithPrefix(
            keyboardType: TextInputType.text,
            readOnly: false,
            hintText: "Mobile no:",
            label: "Mobile no",
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFormFieldWithPrefix(
            keyboardType: TextInputType.text,
            readOnly: false,
            hintText: "Email Address:",
            label: "Email Address",
          ),
          SizedBox(
            height: 40.h,
          ),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: MyButton(
                text: "Create",
              ))
        ],
      ),
    );
  }
}
