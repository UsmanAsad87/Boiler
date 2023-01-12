import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../authservices/auth.dart';

class Logincontroller extends GetxController{ 
  
  
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

  signin(){
    
     AuthServices.signInWithEmailandPass(emailcontroller.text, passcontroller.text);
      emailcontroller.clear();
     passcontroller.clear();
    
    
  }

  

}