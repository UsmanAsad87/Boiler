import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../authservices/auth.dart';

class InstallMenuOfBoilerController extends GetxController{ 
  
  
  TextEditingController companynamecontroller =  TextEditingController();
  
  TextEditingController addresscontroller =  TextEditingController();
  
  
  TextEditingController postcodecontroller =  TextEditingController();
  
  
  TextEditingController installercontroller =  TextEditingController();
  
  
  TextEditingController installationdatecontroller =  TextEditingController();
  
  TextEditingController orginaljobdiscriptioncontroller =  TextEditingController();
  
  TextEditingController proposedvariationcontroller =  TextEditingController();


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

  // signin(){
    
  //    AuthServices.signInWithEmailandPass(emailcontroller.text, passcontroller.text);
  //     emailcontroller.clear();
  //    passcontroller.clear();
    
    
  // }

  

}