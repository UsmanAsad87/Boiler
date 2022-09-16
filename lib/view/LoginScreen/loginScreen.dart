import 'package:boiler/model/button.dart';
import 'package:boiler/model/constants.dart';
import 'package:boiler/view/BottomBar/BottomBar.dart';
import 'package:boiler/view/SignupScreen/signupScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 150.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Image.asset('assets/images/logo.png'),
            )
      ,   SizedBox(height: 5.h,),

    Text("Login to continue using this app.",style: GoogleFonts.dmSans(fontWeight: FontWeight.w500,fontSize: 12.sp,color: Color(0xff232323).withOpacity(0.50)),)
         ,   SizedBox(height: 80.h,),
            CustomTextFormFieldWithPrefix(keyboardType: TextInputType.text, readOnly: false,hintText: "Email",label: "Email",),
            SizedBox(height: 20.h,),
            CustomTextFormFieldWithPrefix(keyboardType: TextInputType.text, readOnly: false,hintText: "Password",label: "Password",sufixIcon: Icon(Icons.visibility))
          ,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forget Password?",style: GoogleFonts.dmSans(fontWeight: FontWeight.w500,fontSize: 12.sp,color: Color(0xff232323)),),
                ],
              ),
            )
,
            SizedBox(height: 40.h,),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomBar()));
                },
                child: MyButton(text: "login")),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      },

                      child: Text("Sign Up",style: GoogleFonts.dmSans(fontWeight: FontWeight.w500,fontSize: 16.sp,color: Colors.blue),)),
                ],
              ),
            )
            ,




          ]),
      ),
    );
  }
}