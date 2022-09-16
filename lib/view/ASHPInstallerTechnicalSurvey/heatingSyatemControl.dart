import 'package:boiler/model/completeBoilerTextField.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/ASHPPictures.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/HeatPumpHandoverCertificate.dart';
import 'package:boiler/view/ASHPInstallerTechnicalSurvey/PostInstallationAshp.dart';
import 'package:boiler/view/PostIInstallation/postInstallation.dart';
import 'package:boiler/view/UploadPicture/uploadPicture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/signature.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
class HeatingSystemControl extends StatefulWidget {
  const HeatingSystemControl({Key? key}) : super(key: key);

  @override
  State<HeatingSystemControl> createState() => _HeatingSystemControlState();
}

class _HeatingSystemControlState extends State<HeatingSystemControl> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  /// The method for [DateRangePickerSelectionChanged] callback, which will be
  /// called whenever a selection changed on the date picker widget.
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {

    setState(() {
      if (args.value is PickerDateRange) {
        // _range = '${('dd/MM/yyyy').format(args.value.startDate)} -'
        // ignore: lines_longer_than_80_chars
        //     ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }
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
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                      onTap:(){
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
                    "Heating system controls",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        fontSize: 27.sp, fontWeight: FontWeight.w500),
                  )),


              SizedBox(
                height: 15.h,
              ),
                   SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Type of HTG controls installed:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "HP control (demand or degree minutes):",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text, readOnly: false,hintText: "",),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Have the controls been setup as per design?",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),

              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "HTG control (HP or 3rd party):",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),

              SizedBox(
                height: 15.h,
              ),
              Text(
                "Have the controls been demonstrated and explained to the customer?",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),

              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "DHW control (HP or 3rd party):",
                    style: GoogleFonts.dmSans(
                      fontSize: 20.sp, fontWeight: FontWeight.w400,),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text, readOnly: false,hintText: "",),

              SizedBox(
                height: 15.h,
              ),
              Text(
                "Has the customer been provided with all documentation required by MIS 3005-D and MIS3005-I?",
                style: GoogleFonts.dmSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text, readOnly: false,hintText: "",),

              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Technicians Comments",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false,maxLines: 8,),

              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Technician signature: ",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
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
              ),  // Installer as per manufacturer's instructions?
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Date:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                  keyboardType: TextInputType.text, readOnly: false),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Customer signature:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),//
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
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Date:",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),

              SizedBox(
                height: 10.h,
              ),
              CustomTextFormFieldWithPrefix3(
                keyboardType: TextInputType.text, readOnly: false,sufixIcon: InkWell(
                  onTap: (){
                  },
                  child: Icon(Icons.date_range)),),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Completed Cylinder Benchmark  ",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),

              Container(height: 170,width: MediaQuery.of(context).size.width*0.95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
                child: Center(

                  child: Text(
                    "Upload Pic ",
                    style: GoogleFonts.dmSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w400,color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ASHPPictures()));
                },
                child: Container(height: 50,width: MediaQuery.of(context).size.width*0.55,
                  decoration: BoxDecoration(
                    color: Color(0xff42FF55),

                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(

                    child: Text(
                      "Take Comulsary Picks",
                      style: GoogleFonts.dmSans(
                          fontSize: 15.sp, fontWeight: FontWeight.w400,color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),












              SizedBox(height: 20.h,),









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

