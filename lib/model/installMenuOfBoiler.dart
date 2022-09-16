import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText4 extends StatefulWidget {
  final double? fontSize;
  final String text;
  final Color? textColor;
  final FontWeight? fontWeight;

  const CustomText4({
    Key? key,
    required this.text,
    this.fontSize,
    this.textColor,
    this.fontWeight
  }) : super(key: key);
  @override
  State<CustomText4> createState() =>
      _CustomText4State();
}

class _CustomText4State
    extends State<CustomText4> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: GoogleFonts.dmSans(
          fontSize: widget.fontSize,
          color: widget.textColor,
          fontWeight: widget.fontWeight
      ),
    );
  }
}



class CustomTextFormFieldWithPrefix4 extends StatefulWidget {
  final String? hintText;
  final int? minLines;
  final int? maxLines;
  final String? label;
  final Widget? sufixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function()? onTap;
  final bool readOnly;
  final TextInputType keyboardType;

  const CustomTextFormFieldWithPrefix4({
    Key? key,
    this.hintText,
    this.label,
    this.sufixIcon,
    this.minLines,
    this.controller,
    this.validator,
    this.onTap,
    this.maxLines,
    required this.keyboardType,
    required this.readOnly
  }) : super(key: key);
  @override
  State<CustomTextFormFieldWithPrefix4> createState() =>
      _CustomTextFormFieldWithPrefix4State();
}

class _CustomTextFormFieldWithPrefix4State
    extends State<CustomTextFormFieldWithPrefix4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: TextFormField(

        style: TextStyle(fontSize:14,color:Colors.black),
        keyboardType: widget.keyboardType,
        maxLines: widget.maxLines,
        readOnly: widget.readOnly,
        onTap: widget.onTap,
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          filled: true,
          fillColor: Colors.white,
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white,width: 1)
          ),
          suffixIconColor: Color(0xffACA9A9),
          suffixIcon: widget.sufixIcon,

          hintText: widget.hintText,
          hintStyle: GoogleFonts.dmSans(fontSize:14.sp,color:Colors.black),


          labelStyle:GoogleFonts.dmSans(fontSize:14.sp,color:Colors.black,fontWeight: FontWeight.w400) ,
          label: widget.label != null ? Text(widget.label!) : null,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white,width: 1)

          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white,width: 1)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white,width: 1)
          ),
        ),
        validator: widget.validator ??
                (String? value) {
              if (value!.isEmpty) {
                setState(() {
                });
                return "Please fill out this feild";
              }
              return null;
            },
      ),
    );
  }
}

class CustomPasswordFormFieldWithPrefix extends StatefulWidget {
  final String? hintText;
  final int? minLines;
  final String? label;
  final Widget ?prefixIcon;
  final TextEditingController? controller;
  // final bool? obscureText;
  final String? Function(String?)? validator;
  final Color? borderColor;
  const CustomPasswordFormFieldWithPrefix({
    Key? key,
    this.hintText,
    this.label,
    this.prefixIcon,
    this.minLines,
    this.controller,
    // this.obscureText,
    this.validator,
    this.borderColor,
  }) : super(key: key);

  @override
  State<CustomPasswordFormFieldWithPrefix> createState() =>
      _CustomPasswordFormFieldWithPrefixState();
}

class _CustomPasswordFormFieldWithPrefixState
    extends State<CustomPasswordFormFieldWithPrefix> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: TextFormField(
        // textAlign: TextAlign.center,
        controller: widget.controller,

        obscureText: isVisible,
        style: GoogleFonts.dmSans(fontSize:17,color:Colors.black),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          filled: true,
          fillColor: Color(0xffEEEEEE),
          prefixIcon: widget.prefixIcon,
          hintText: widget.hintText,
          label: widget.label != null ? Text(widget.label!) : null,

          hintStyle: TextStyle(fontSize:14,color:Colors.white),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white,width: 1)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white,width: 1)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white,width: 1)
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            splashRadius: 15,
            icon: Icon(isVisible ? Icons.visibility_off : Icons.visibility,color: Colors.black,),
            iconSize: 20,
          ),
        ),

        validator: widget.validator ??
                (String? value) {
              if (value!.isEmpty) {
                return "Please fill out this field";
              }
              return null;
            },
      ),
    );
  }
}
