import 'dart:async';

import 'package:boiler/view/HomeScreen/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../BottomBar/BottomBar.dart';
import '../LoginScreen/loginScreen.dart';

String? finalemail;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getvalidationdata().whenComplete(() async {
      Timer(Duration(seconds: 3),
          () => Get.to(finalemail == null ? LoginScreen() : BottomBar()));
    });
    // TODO: implement initState
    // Future.delayed(Duration(seconds: 3)).then((value) => {
    //       Navigator.of(context)
    //           .push(MaterialPageRoute(builder: (context) => LoginScreen())),
    //     });
    super.initState();
  }

  Future getvalidationdata() async {
    final SharedPreferences sharedpref = await SharedPreferences.getInstance();
    var obtainedemail = sharedpref.getString('email');
    setState(() {
      finalemail = obtainedemail;
    });
    print(finalemail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/logo.png')),
        ],
      ),
    );
  }
}
