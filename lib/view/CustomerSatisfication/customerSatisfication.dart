import 'package:boiler/model/installMenuOfBoiler.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/HeatPumpHandoverCertificate.dart';
import 'package:boiler/view/BoilerPictures/BoilerPicture.dart';
import 'package:boiler/view/BottomBar/BottomBar.dart';
import 'package:boiler/view/PostIInstallation/postInstallation.dart';
import 'package:boiler/view/waterQuality/waterQuality.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/signature.dart';
class CustomerSatisfication extends StatefulWidget {
  const CustomerSatisfication({Key? key}) : super(key: key);

  @override
  State<CustomerSatisfication> createState() => _CustomerSatisficationState();
}

class _CustomerSatisficationState extends State<CustomerSatisfication> {
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
            SizedBox(height: 50.h,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
            SizedBox(height: 30.h,),




            Center(child: Text("Customer Satisfaction Questionnaire\n(Part 2)",textAlign: TextAlign.center,style: GoogleFonts.dmSans(fontSize:22.sp,fontWeight: FontWeight.w500),)),
            SizedBox(height: 10.h,),
            Center(
              child: Container(
                  width: 300.w,
                  child: Divider(thickness: 1,color: Colors.black,)),
            ),

                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Center(child: Text("Out of 10, how would you rate your customer journey?",style: GoogleFonts.dmSans(fontSize:18.sp,fontWeight: FontWeight.w400),)),
                ),









            SizedBox(height: 20.h,),




            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: TextFormField(
                maxLines: 5,
                decoration: InputDecoration
                  (
hintText: "Comment",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(17),
                    )
                ),
              ),
            ),
            SizedBox(height: 20.h,),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: TextFormField(
                maxLines: 5,
                decoration: InputDecoration
                  (
                  hintText: "Comments",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(17),
                    )
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Divider(thickness: 1,color: Colors.black,),
            SizedBox(height: 10.h,),
            Center(child: Text("Declaration",style: GoogleFonts.dmSans(fontSize:22.sp,fontWeight: FontWeight.w500),)),

            Center(
              child: Container(
                  width: 120.w,
                  child: Divider(thickness: 1,color: Colors.black,)),
            ),
            SizedBox(height: 20.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Center(child: Text(" I confirm that I have completed the above questions accurately and I am happy for this document to be used for internal auditing purposes.",textAlign: TextAlign.center,style: GoogleFonts.dmSans(fontSize:12.sp,fontWeight: FontWeight.w500),)),
            ),
            SizedBox(height: 50.h,),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text("Customer Signature:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Signature(controller: _controller1,
                  height: 100,
                  backgroundColor: Colors.white,

                ),
              ),
            ),
            SizedBox(height: 20.h,),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text("Date:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),
            SizedBox(height: 20.h,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text("Installer Signature:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Signature(controller: _controller,
                  height: 100,
                  backgroundColor: Colors.white,

                ),
              ),
            ),
            SizedBox(height: 20.h,),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text("Date:",style: GoogleFonts.dmSans(fontSize:15.sp,fontWeight: FontWeight.w400),),
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            CustomTextFormFieldWithPrefix4(readOnly: false,keyboardType: TextInputType.text),



            SizedBox(height: 20.h,),





            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 58.0),
              child: InkWell(
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>BoilerPictures()));
                },
                child: Container(
                  height: 46.h,
                  width: 193.w,
                 decoration: BoxDecoration(
                     color: Color(0xff42FF55),

                     borderRadius: BorderRadius.circular(10)
                 ),
                  child: Center(
                    child: Text("Take Compulsary Picks",style: GoogleFonts.dmSans(fontSize: 15,fontWeight: FontWeight.w400),),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h,),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomBar()));
              },
              child: Container(
                height: 46.h,
                width: 193.w,
                decoration: BoxDecoration(
                    color: Color(0xff42FF55),
                    borderRadius: BorderRadius.circular(11)

                ),
                child: Center(
                  child: Text("Save",style: GoogleFonts.dmSans(fontSize: 15,fontWeight: FontWeight.w400),),
                ),
              ),
            ),
            SizedBox(height: 30.h,),











          ],
        ),
      ),
    );
  }
}
