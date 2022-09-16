import 'package:boiler/view/BoilerPictures/BoilerPicture.dart';
import 'package:boiler/view/CompleteBoilerBanchMark/completeBoilerBanckMark.dart';
import 'package:boiler/view/CustomerSatisfication/customerSatisfication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../waterQuality/waterQuality.dart';
class UploadPicture extends StatelessWidget {
  const UploadPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Column(
          children: [
            SizedBox(height: 30.h),

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  InkWell(
                    onTap:(){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height:20.h,
                      width: 35.w,
                      decoration: BoxDecoration(

                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/Arrow 3.png"),
                          )

                      ),),
                  ),
                ],
              ),
            ),

            SizedBox(height: 60.h),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                children: [
                  Text("Upload Picture",style: GoogleFonts.dmSans(fontWeight: FontWeight.w400,fontSize: 23.sp),),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              height: 280.h,
              width: 339.w,
              decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 20.h,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CompleteBoilerBenchMark()));
              },
              child: Container(
                height: 46.h,
                width:193.w,
                decoration: BoxDecoration(
                  color: Color(0xff42FF55),

                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("Done",style: GoogleFonts.dmSans(fontSize: 15,fontWeight: FontWeight.w400),),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
