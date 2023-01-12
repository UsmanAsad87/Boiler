import 'package:boiler/colors/common.dart';
import 'package:boiler/model/button.dart';
import 'package:boiler/model/constants.dart';
import 'package:boiler/view/LoginScreen/loginScreen.dart';
import 'package:boiler/view/SignupScreen/SignupControoler.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController gasSafeController = TextEditingController();
  TextEditingController g3No = TextEditingController();
  TextEditingController number = TextEditingController();
  final formkey = GlobalKey<FormState>();
  signupcontroller _controoler = new signupcontroller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
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
                controller: _controoler.usrnamecontroller,
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "Name",
                label: "Name",
                obscureText: false,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormFieldWithPrefix(
                controller: gasSafeController,
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "Gassafe No:",
                label: "Gassafe No",
                obscureText: false,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormFieldWithPrefix(
                controller: g3No,
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "G3 No:",
                label: "G3 No",
                obscureText: false,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormFieldWithPrefix(
                controller: number,
                keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "Mobile no:",
                label: "Mobile no",
                obscureText: false,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormFieldWithPrefix(
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.emailcontroller,

                // keyboardType: TextInputType.text,
                readOnly: false,
                hintText: "Email Address:",
                label: "Email Address", obscureText: false,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomPasswordFormFieldWithPrefix(
                //  keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password Cannot Be Empty';
                  }
                  return null;
                },
                controller: _controoler.passcontroller,
                //  readOnly: false,
                //  obscureText: true,
                hintText: "Password",
                label: "Password",
                //  sufixIcon: IconButton(onPressed: () => updateStatus(), icon:
                //     Icon(_isVisible ? Icons.visibility : Icons.visibility_off),)
              ),
              SizedBox(
                height: 40.h,
              ),
              InkWell(
                  onTap: () async {
                    print(_controoler.emailcontroller.text);
                    print(_controoler.passcontroller);

                    //print(_controoler.emailcontroller.toString() + _controoler.usrnamecontroller.toString() +_controoler.passcontroller.toString());
                    if (formkey.currentState!.validate()) {
                      print(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");
                      // _controoler.signup();
                      validation(context);
                    } else {
                      common.toastShow("Please Fill All Fields");
                    }
                    //   print("........................");

                    //common.toastShow("Please Fill All Fields");
                    //Get.to(LoginScreen());
                  },
                  child: MyButton(
                    text: "Create",
                  ))
            ],
          ),
        ),
      ),
    );
  }

  static String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regExp = RegExp(p);
  bool isLoading = false;
  late UserCredential authResult;
  void submit() async {
    setState(() {
      isLoading = true;
      // actEmail.text = phoneNumber.text + '@gmail.com';
      // print('actEmail.text.toString()');
      // print(actEmail.text.toString());
    });
    try {
      authResult = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _controoler.emailcontroller.text,
          password: _controoler.passcontroller.text);
      // ignore: nullable_type_in_catch_clause
    } on PlatformException catch (e) {
      String message = "Please Check Internet";
      if (e.message != null) {
        message = e.message.toString();
      }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
      ));
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
    // var random = Random().nextInt(99999999);
    await FirebaseFirestore.instance
        .collection('userInfo')
        .doc(authResult.user?.uid)
        .set({
      "userName": _controoler.usrnamecontroller.text.toString(),
      "userEmail": _controoler.emailcontroller.text,
      "gassSafeNo": gasSafeController.text,
      "g3No": g3No.text,
      "number": number.text,
      "uid": authResult.user?.uid,
      "userPass": _controoler.passcontroller.text.toString(),
      "photoUrl": null,
      // 'points': points,
    });
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => LoginScreen()));
    setState(() {
      isLoading = false;
    });
  }

  void validation(context) {
    if (_controoler.emailcontroller.text.isEmpty &&
        _controoler.passcontroller.text.isEmpty &&
        _controoler.usrnamecontroller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("All Fields are Empty"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else if (_controoler.emailcontroller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Invalid Email"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else if (!regExp.hasMatch(_controoler.emailcontroller.text)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Invalid Email"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else if (_controoler.passcontroller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Invalid Password"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else if (_controoler.usrnamecontroller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Invalid Username"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else if (_controoler.passcontroller.text.length < 8) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Password is too short!"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else {
      submit();
    }
  }
}
