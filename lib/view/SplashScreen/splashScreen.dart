import 'package:boiler/model/constants.dart';
import 'package:boiler/view/HomeScreen/homeScreen.dart';
import 'package:flutter/material.dart';

import '../LoginScreen/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3)).then((value) => {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen())),
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/logo.png')),
      ],),
    );
  }
}