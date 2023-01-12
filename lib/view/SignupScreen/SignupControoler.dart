import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../authservices/auth.dart';
import '../LoginScreen/loginScreen.dart';

class signupcontroller extends GetxController{ 
  TextEditingController usrnamecontroller =  TextEditingController();
  
  TextEditingController emailcontroller =  TextEditingController();
  
  TextEditingController passcontroller =  TextEditingController();


  var ispasshide=true.obs;
  @override
  void onInit(){
    super.onInit();
  }
@override
  void onReady(){
    super.onReady();
  }
@override
  void onClose(){
    super.onClose();
  }

  signup(){
    
     AuthServices.createStuwithemailandpass(emailcontroller.text, passcontroller.text);
      emailcontroller.clear();
     passcontroller.clear();
     usrnamecontroller.clear();
     Get.to(LoginScreen()); 
    
  }

}