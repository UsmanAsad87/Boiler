import 'package:boiler/firebase_repository/ASHP_methods.dart';
import 'package:boiler/model/ASHPModel.dart';
import 'package:boiler/model/boilerModel.dart';
import 'package:boiler/pdf_genarate/pdf_ashp_api.dart';
import 'package:boiler/pdf_genarate/pdf_boiler_api.dart';
import 'package:boiler/utils/loader.dart';
import 'package:boiler/view/UserFiles/SendDeleteFile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:firebase_auth/firebase_auth.dart';

import '../../pdf_genarate/pdf_api.dart';

class UserFilesDummy extends StatefulWidget {
  const UserFilesDummy({Key? key}) : super(key: key);

  @override
  State<UserFilesDummy> createState() => _UserFilesDummyState();
}

class _UserFilesDummyState extends State<UserFilesDummy> {
  var show = false;
  List<String> dropDown=['Boiler Survey','ASHP Survey'];
  int dropdownIndex=0;
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
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Files\n',
                          style: GoogleFonts.dmSans(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ],
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
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffD9D9D9)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            dropDown[dropdownIndex],
                            style: GoogleFonts.dmSans(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  show = !show;
                                });
                              },
                              child: Icon(Icons.keyboard_arrow_down_rounded))
                        ],
                      ),
                      Visibility(
                        visible: show,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  show = false;
                                  dropdownIndex=0;
                                });
                              },
                              child: Text(
                                '\nBoiler Survey\n',
                                style: GoogleFonts.dmSans(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  show = false;
                                  dropdownIndex=1;
                                });
                              },
                              child: Text(
                                'ASHP Survey\n',
                                style: GoogleFonts.dmSans(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      ' Search Customer',
                      style: GoogleFonts.dmSans(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey.shade600,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.grey.shade300),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lightGreen),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('A-Z', style: TextStyle(color: Colors.white))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                dropdownIndex==0?

                StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('Boiler_Survey')
                      .snapshots(),
                  builder: (context,
                      AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                      snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return SizedBox(
                        height: 200.h,
                        child: const Center(
                          child: CircularProgressIndicator(
                            color: Colors.blueAccent,
                          ),
                        ),
                      );
                    }
                    return GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.w,),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        print( snapshot.data!.docs.length);
                        BoilerModel boilerModel =BoilerModel.fromJson(snapshot.data!.docs[index].data());
                        return BoilerSurveyCard(boilerModel: boilerModel);
                      },
                    );
                  },
                ):
                StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('ASHP_Survey')
                      .snapshots(),
                  builder: (context,
                      AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                      snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return SizedBox(
                        height: 200.h,
                        child: const Center(
                          child: CircularProgressIndicator(
                            color: Colors.blueAccent,
                          ),
                        ),
                      );
                    }
                    return GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.w,),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        print( snapshot.data!.docs.length);
                        ASHPModel ashpModel= ASHPModel.fromJson(snapshot.data!.docs[index].data());
                        return ASHPSurveyCard(ashpModel: ashpModel);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ASHPSurveyCard extends StatefulWidget {
  const ASHPSurveyCard({
    Key? key,
    required this.ashpModel,
  }) : super(key: key);

  final ASHPModel ashpModel;

  @override
  State<ASHPSurveyCard> createState() => _ASHPSurveyCardState();
}

class _ASHPSurveyCardState extends State<ASHPSurveyCard> {
  bool _isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
          child: Container(
            height: 170.h,
            width: MediaQuery.of(context).size.width / 2 - 25.w,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/back.png',fit: BoxFit.cover,)
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            setState(() {
              _isLoading=true;
            });

            final pdfFile = await PdfASHPApi.generate(widget.ashpModel);
            PdfApi.openFile(pdfFile);

            setState(() {
              _isLoading=false;
            });

          },
          child: Padding(
            padding: EdgeInsets.only(top: 10.h, bottom: 15.h),
            child: Container(
              padding: EdgeInsets.all(8.h),
              height: 170.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.7),
              ),
              width: MediaQuery.of(context).size.width / 2 - 25.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start
                ,children: [
                  if(_isLoading)
                    spinKit(color: Colors.white),

                  Text(
                    "Survey By: "+widget.ashpModel.surveyby!,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Survey date: "+widget.ashpModel.surveydate!,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Customer name: "+widget.ashpModel.customername!,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class BoilerSurveyCard extends StatefulWidget {
  const BoilerSurveyCard({
    Key? key,
    required this.boilerModel,
  }) : super(key: key);

  final BoilerModel boilerModel;

  @override
  State<BoilerSurveyCard> createState() => _BoilerSurveyCardState();
}

class _BoilerSurveyCardState extends State<BoilerSurveyCard> {
  bool _isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
          child: Container(
            height: 170.h,
            width: MediaQuery.of(context).size.width / 2 - 25.w,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/back.png',fit: BoxFit.cover,)
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            setState(() {
              _isLoading=true;
            });

            final pdfFile = await PdfBoilerApi.generate(widget.boilerModel);
            PdfApi.openFile(pdfFile);

            setState(() {
              _isLoading=false;
            });

          },
          child: Padding(
            padding: EdgeInsets.only(top: 10.h, bottom: 15.h),
            child: Container(
              padding: EdgeInsets.all(8.h),
              height: 170.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.7),
              ),
              width: MediaQuery.of(context).size.width / 2 - 25.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start
                ,children: [
                if(_isLoading)
                  spinKit(color: Colors.white),

                Text(
                  "Customer name: "+widget.boilerModel.customername!,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Survey date: "+widget.boilerModel.surveydate!,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400),
                ),

              ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}