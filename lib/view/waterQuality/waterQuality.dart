import 'package:boiler/view/CondensateDisposal/condensateDisposal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WaterQuality extends StatefulWidget {
  const WaterQuality({Key? key}) : super(key: key);

  @override
  State<WaterQuality> createState() => _WaterQualityState();
}

class _WaterQualityState extends State<WaterQuality> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFEFEF),
        // appBar: AppBar(
        //   elevation: 0.0,
        //   backgroundColor: Color(0xffEFEFEF),
        //   leading: Icon(
        //     Icons.keyboard_backspace_outlined,
        //     color: Colors.black,
        //     size: 30.sp,
        //   ),
        // ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(18),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
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
                  //-----------------
                  //-----------------
                  //-----------------
                  Text(
                    'Water quality',
                    style: GoogleFonts.dmSans(
                        fontSize: 27.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15.h,
                    width: MediaQuery.of(context).size.width * .47,
                    child: Divider(
                      height: 4,
                      thickness: 1.3,
                      color: Colors.black,
                    ),
                  ),
                  //-----------------
                  //-----------------
                  //-----------------
                  Padding(
                    padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                    child: Text(
                      'The system has been flushed, cleaned and a suitable inhibitor applied upon final fill, in accordance with BS7593 and boiler manufacturers’ instructions',
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: Colors.black),
                    ),
                  ),
                  //-----------------
                  //-----------------
                  //-----------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      CustomButton(
                        textData: 'Yes',
                        height: 42,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          textData: 'No',
                          height: 42,
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                  //-----------------
                  //-----------------
                  //-----------------
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, bottom: 5.h),
                    child: Question(text: 'What system cleaner was used?'),
                  ),
                  //-----------------
                  //-----------------
                  //-----------------
                  CustomTextFormField(hintText: 'Brand'),
                  CustomTextFormField(hintText: 'Product'),
                  //-----------------
                  //-----------------
                  //-----------------
                  Padding(
                    padding: EdgeInsets.only(top: 25.h, bottom: 5.h),
                    child: Question(text: 'What inhibitor was used?'),
                  ),
                  //-----------------
                  //-----------------
                  //-----------------
                  CustomTextFormField(hintText: 'Brand'),
                  CustomTextFormField(hintText: 'Product'),
                  //-----------------
                  //-----------------
                  //-----------------
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TitleText(
                      textData: 'Primary water system filter',
                    ),
                  ),
                  // Container(
                  //   alignment: Alignment.centerLeft,
                  //   child: Padding(
                  //     padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
                  //     child: Text(
                  //       'Primary water system filter',
                  //       style: GoogleFonts.dmSans(
                  //           fontWeight: FontWeight.w500, fontSize: 17.sp),
                  //     ),
                  //   ),
                  // ),
                  //-----------------
                  //-----------------
                  //-----------------
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        textData: 'Pre-existing',
                        height: 45,
                        maxWidth: true,
                      ),
                      CustomButton(
                        textData: 'Fitted',
                        height: 45,
                        maxWidth: true,
                      ),
                      CustomButton(
                        textData: 'Not required',
                        height: 45,
                        maxWidth: true,
                      ),
                    ],
                  ),
                  //-----------------
                  //-----------------
                  //-----------------
                  Padding(
                    padding: EdgeInsets.only(top: 43.h, bottom: 25.h),
                    child: Divider(
                      height: 4,
                      thickness: 2.3,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'CENTRAL HEATING MODE measure and record (as appropriate)',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 19.sp,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.only(top: 12.h, bottom: 25.h),
                    child: Divider(
                      height: 4,
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  //------------------
                  //------------------
                  //------------------
                  Text(
                    'Gas rate (for combination boilers complete DHW mode gas rate)',
                    style: GoogleFonts.dmSans(
                        fontSize: 12.sp, fontWeight: FontWeight.w400),
                  ),
                  //------------------
                  //------------------
                  //------------------
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        textData: 'm3/hr',
                        height: 45,
                        maxWidth: true,
                        isTextCentered: false,
                        textBold: false,
                      ),
                      Padding(
                        padding: EdgeInsets.all(7),
                        child: Text(
                          'OR',
                          style: GoogleFonts.dmSans(
                              fontSize: 18.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                      CustomButton(
                        textData: 'ft3/hr',
                        height: 45,
                        maxWidth: true,
                        isTextCentered: false,
                        textBold: false,
                      ),
                    ],
                  ),
                  //------------------
                  //------------------
                  //------------------
                  Padding(
                    padding: EdgeInsets.only(top: 25.h, bottom: 5.h),
                    child: Question(
                        text:
                            'Central heating output left at factory settings?'),
                  ),
                  //------------------
                  //------------------
                  //------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                        textData: 'Yes',
                        height: 33,
                        textBold: false,
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          textData: 'No',
                          height: 33,
                          textBold: false,
                        ),
                      ),
                    ],
                  ),
                  //------------------
                  //------------------
                  //------------------
                  Padding(
                    padding: EdgeInsets.only(top: 25.h, bottom: 5.h),
                    child: Question(
                        text:
                            'If no, what is the maximum central heating output selected?'),
                  ),
                  CustomTextFormField(hintText: 'kW'),
                  //------------------
                  //------------------
                  //------------------
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TitleText(
                      textData: 'Dynamic gas inlet pressure',
                    ),
                  ),
                  CustomTextFormField(hintText: 'mbar'),
                  SizedBox(
                    height: 3.h,
                  ),
                  //------------------
                  //------------------
                  //------------------
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TitleText(
                      textData: 'Central heating flow temperature',
                    ),
                  ),
                  CustomTextFormField(hintText: '°C'),
                  SizedBox(
                    height: 3.h,
                  ),
                  //------------------
                  //------------------
                  //------------------
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TitleText(
                      textData: 'Central heating return temperature',
                    ),
                  ),
                  CustomTextFormField(hintText: '°C'),
                  SizedBox(
                    height: 3.h,
                  ),
                  //------------------
                  //------------------
                  //------------------
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TitleText(
                      textData: 'System correctly balanced/rebalanced',
                    ),
                  ),
                  CustomTextFormField(hintText: 'Yes'),
                  SizedBox(
                    height: 3.h,
                  ),
                  //------------------
                  //------------------
                  //------------------
                  //------------------

                  Padding(
                    padding: EdgeInsets.only(top: 43.h, bottom: 25.h),
                    child: Divider(
                      height: 4,
                      thickness: 2.3,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Combinations Boiler Only',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 19.sp,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    padding: EdgeInsets.only(top: 12.h, bottom: 25.h),
                    child: Divider(
                      height: 3,
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  //------------------
                  //------------------
                  //------------------
                  Padding(
                    padding: EdgeInsets.only(top: 25.h, bottom: 5.h),
                    child: Question(
                        text:
                            'Is the installation in a hard water area (above 200ppm)?'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                        textData: 'Yes',
                        height: 33,
                        textBold: false,
                      ),
                      CustomButton(
                        textData: 'No',
                        height: 33,
                        textBold: false,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TitleText(
                      textData: 'Water scale reducer/softener',
                    ),
                  ),
                  //------------------
                  //------------------
                  //------------------
                  //------------------
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        textData: 'Pre-existing',
                        height: 45,
                        maxWidth: true,
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          textData: 'Fitted',
                          height: 45,
                          maxWidth: true,
                        ),
                      ),
                      CustomButton(
                        textData: 'Not required',
                        height: 45,
                        maxWidth: true,
                      ),
                    ],
                  ),
                  //-----------------
                  //-----------------
                  //-----------------
                  Padding(
                    padding: EdgeInsets.only(top: 25.h, bottom: 5.h),
                    child: Question(
                        text:
                            'What type of scale reducer/softener has been fitted?'),
                  ),
                  //-----------------
                  //-----------------
                  //-----------------
                  CustomTextFormField(hintText: 'Brand'),
                  CustomTextFormField(hintText: 'Product'),
                  //-----------------
                  //-----------------
                  //-----------------
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TitleText(
                      textData: 'Water meter fitted?',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                        textData: 'Yes',
                        height: 33,
                        textBold: false,
                      ),
                      CustomButton(
                        textData: 'No',
                        height: 33,
                        textBold: false,
                      ),
                    ],
                  ),
                  //---------------
                  //---------------
                  //---------------
                  //---------------

                  Align(
                    alignment: Alignment.centerLeft,
                    child: TitleText(
                      textData: 'If yes- DHW expansion vessel',
                    ),
                  ),
                  //------------------
                  //------------------
                  //------------------
                  //------------------
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          textData: 'Pre-existing',
                          height: 45,
                          maxWidth: true,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          textData: 'Fitted',
                          height: 45,
                          maxWidth: true,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          textData: 'Not required',
                          height: 45,
                          maxWidth: true,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  //-----------------
                  //-----------------
                  //-----------------
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TitleText(
                      textData: 'Pressure reducing valve',
                    ),
                  ),
                  //------------------
                  //------------------
                  //------------------
                  //------------------
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          textData: 'Pre-existing',
                          height: 45,
                          maxWidth: true,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          textData: 'Fitted',
                          height: 45,
                          maxWidth: true,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          textData: 'Not required',
                          height: 45,
                          maxWidth: true,
                        ),
                      ),
                    ],
                  ),
                  //-----------------
                  //-----------------
                  //-----------------

                  //------------------------------- New Section
                  Padding(
                    padding: EdgeInsets.only(top: 43.h, bottom: 25.h),
                    child: Divider(
                      height: 4,
                      thickness: 2.3,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Domestic Hot Water Mode Measure and record',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 19.sp,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.only(top: 12.h, bottom: 25.h),
                    child: Divider(
                      height: 4,
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  //------------------
                  //------------------
                  //------------------
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TitleText(
                      textData: 'Gas rate',
                    ),
                  ),
                  //------------------
                  //------------------
                  //------------------
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        textData: 'm3/hr',
                        height: 45,
                        maxWidth: true,
                        isTextCentered: false,
                        textBold: false,
                      ),
                      Padding(
                        padding: EdgeInsets.all(7),
                        child: Text(
                          'OR',
                          style: GoogleFonts.dmSans(
                              fontSize: 18.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                      CustomButton(
                        textData: 'ft3/hr',
                        height: 45,
                        maxWidth: true,
                        isTextCentered: false,
                        textBold: false,
                      ),
                    ],
                  ),
                  //------------------
                  //------------------
                  //------------------
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TitleText(
                      textData: 'Dynamic gas inlet pressure at maximum rate',
                    ),
                  ),
                  //------------------
                  //------------------
                  //------------------
                  CustomTextFormField(hintText: 'mbar'),
                  //------------------
                  //------------------
                  //------------------
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TitleText(
                      textData: 'Cold water inlet temperature',
                    ),
                  ),
                  CustomTextFormField(hintText: 'mbar'),
                  SizedBox(
                    height: 3.h,
                  ),
                  //------------------
                  //------------------
                  //------------------
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TitleText(
                      textData: 'Hot water has been checked at all outlets',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          textData: 'Yes',
                          height: 33,
                          textBold: false,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CustomButton(
                          textData: 'No',
                          height: 33,
                          textBold: false,
                        ),
                      ),
                    ],
                  ),
                  //------------------
                  //------------------
                  //------------------
                  Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixText: '°C',
                        hintText: 'Temperature',
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CondensateDisposal()));
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
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class TitleText extends StatelessWidget {
  TitleText({Key? key, required this.textData}) : super(key: key);
  String textData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: Text(
        textData,
        style: GoogleFonts.dmSans(
            fontSize: 18.sp, fontWeight: FontWeight.w500, color: Colors.black),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({Key? key, required this.hintText}) : super(key: key);
  String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText.toString(),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      this.height = 42,
      this.isTextCentered = true,
      this.maxWidth = false,
      this.textBold = true,
      required this.textData})
      : super(key: key);
  int height;
  String textData;
  bool maxWidth;
  bool isTextCentered;
  bool textBold;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
      padding: isTextCentered ? EdgeInsets.zero : EdgeInsets.only(left: 15.w),
      alignment: isTextCentered ? Alignment.center : Alignment.centerLeft,
      height: height.h,
      width: maxWidth ? MediaQuery.of(context).size.width : 129.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Text(
        textData.toString(),
        style: GoogleFonts.dmSans(
            fontSize: 15.sp,
            fontWeight: textBold ? FontWeight.w500 : FontWeight.normal,
            color: Colors.black),
      ),
    );
  }
}

class Question extends StatelessWidget {
  Question({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text.toString(),
        style: GoogleFonts.dmSans(
          fontSize: 16.sp,
          color: Colors.black,
        ),
      ),
    );
  }
}
