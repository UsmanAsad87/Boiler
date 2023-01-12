import 'package:boiler/colors/common.dart';
import 'package:boiler/model/button.dart';
import 'package:boiler/model/constants.dart';
import 'package:boiler/view/GlobalData.dart';
import 'package:boiler/view/LoginScreen/logincontrooler.dart';
import 'package:boiler/view/SignupScreen/signupScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../BottomBar/BottomBar.dart';

bool? a;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late UserCredential authResult;
  final formkey = GlobalKey<FormState>();
  Logincontroller _controoler = new Logincontroller();
  bool isLoading = false;
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                height: 150.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Image.asset('assets/images/logo.png'),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Login to continue using this app.",
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: Color(0xff232323).withOpacity(0.50)),
              ),
              SizedBox(
                height: 80.h,
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

                // Mycomponents.useremail=_controoler.emailcontroller.text;
                //  keyboardType: TextInputType.text,
                // obscureText: true,
                readOnly: false,
                hintText: "Email",
                label: "Email", obscureText: false,
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget Password?",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: Color(0xff232323)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              InkWell(
                  onTap: () async {
                    // Mycomponents.useremail=_controoler.emailcontroller.text;
                    print(_controoler.emailcontroller.text);
                    print(_controoler.passcontroller);

                    //print(_controoler.emailcontroller.toString() + _controoler.usrnamecontroller.toString() +_controoler.passcontroller.toString());
                    if (formkey.currentState!.validate()) {
                      Mycomponents.useremail = _controoler.emailcontroller.text;
                      print("nnnnnnmmmmmmmmmnmmmmmm");
                      print(Mycomponents.useremail);
                      setState(() {
                        isLoading = true;
                      });

                      print(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");
                      validation(context);
                      setState(() {
                        isLoading = false;
                      });
                    } else {
                      common.toastShow("Please Fill All Fields");
                    }

                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => BottomBar()));
                  },
                  child: (isLoading)
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            color: Color.fromARGB(255, 150, 16, 16),
                            strokeWidth: 1.5,
                          ))
                      : MyButton(text: "login")),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
                        },
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: Colors.blue),
                        )),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void submit() async {
    setState(() {
      isLoading = true;
    });
    try {
      authResult = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _controoler.emailcontroller.text,
          password: _controoler.passcontroller.text);
      final SharedPreferences sp = await SharedPreferences.getInstance();
      sp.setString('email', _controoler.emailcontroller.text);
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => BottomBar()));
    } on PlatformException catch (e) {
      String message = "Please Check Internet";
      if (e.message != null) {
        message = e.message.toString();
      }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message.toString()),
      ));
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
      setState(() {
        isLoading = false;
      });
    }

    setState(() {
      isLoading = false;
    });
  }
//password regex
  // static String p =
  //     r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  //
  // RegExp regExp = new RegExp(p);

  void validation(context) {
    if (_controoler.emailcontroller.text.isEmpty &&
        _controoler.passcontroller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Both are Empty"),
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
    }
    // else if (phonecontroller.text.length < 11) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       content: Text("PhoneNumber Length must be 11 digits"),
    //       duration: Duration(milliseconds: 300),
    //     ),
    //   );
    // }
    else if (_controoler.passcontroller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Invalid Password"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else {
      submit();
    }
  }
}
