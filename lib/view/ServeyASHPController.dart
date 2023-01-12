import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../authservices/auth.dart';

class ASHPsurveycontroller extends GetxController{ 
  
  
  TextEditingController installdatecontroller =  TextEditingController();  
  TextEditingController installtypecontroller =  TextEditingController();
  TextEditingController manpowercontroller =  TextEditingController();
  TextEditingController mancontroller =  TextEditingController();
  TextEditingController surveydatecontroller =  TextEditingController();
  TextEditingController surveybycontroller =  TextEditingController();
  TextEditingController customernamecontroller =  TextEditingController();
  TextEditingController propertycontroller =  TextEditingController();
  TextEditingController postcodecontroller =  TextEditingController();
  TextEditingController contactcontroller =  TextEditingController();
  TextEditingController emailcontroller =  TextEditingController();



  //Property Details Controller

  TextEditingController parkingController =  TextEditingController();  
  TextEditingController skipNeedecontroller =  TextEditingController();
  TextEditingController skipPermitrequiredController =  TextEditingController();
  TextEditingController commentsController =  TextEditingController();
  TextEditingController boilerTypeController =  TextEditingController();
  TextEditingController boilerLocationController =  TextEditingController();
  TextEditingController ripOutController =  TextEditingController();
  TextEditingController comments2Controller =  TextEditingController();
  TextEditingController cylinderController =  TextEditingController();
  TextEditingController cylinderLocationController =  TextEditingController();
  TextEditingController ripOut2Controller =  TextEditingController();
  TextEditingController comments3Controller =  TextEditingController();
  TextEditingController abbestosremovalController =  TextEditingController();
  TextEditingController comments4Controller =  TextEditingController();
  TextEditingController ripOutequiredController =  TextEditingController();


//Proposed New ASHP Controller

  TextEditingController makeAndModelController =  TextEditingController();  
  TextEditingController ashpLocationcontroller =  TextEditingController();
  TextEditingController doweNeedToBuildABaseController =  TextEditingController();
  TextEditingController baseConstructedWithController =  TextEditingController();
  TextEditingController whoIsBuildingTheBaseController =  TextEditingController();
  TextEditingController howManyHeatingZonesController =  TextEditingController();
  TextEditingController describeFlowController =  TextEditingController();
  TextEditingController pipesAndLaggingController =  TextEditingController();
  TextEditingController doWeNeedTrunkingController =  TextEditingController();
  TextEditingController doweNeedScaffoldController =  TextEditingController();
  TextEditingController doWeNeedAGenieController =  TextEditingController();
  TextEditingController describeCondensateController =  TextEditingController();
  TextEditingController anyPumpsController =  TextEditingController();
  TextEditingController system25PumpController =  TextEditingController();
  TextEditingController anyZoneController =  TextEditingController();
  TextEditingController whatTypeController =  TextEditingController();


  //Proposed New CYLINDER Controller

  TextEditingController cylinderMakeController =  TextEditingController();  
  TextEditingController cylinderLocationcontroller =  TextEditingController();
  TextEditingController limeScaleController =  TextEditingController();
  TextEditingController doWeController =  TextEditingController();
  TextEditingController baseConStructedController =  TextEditingController();
  TextEditingController whoIsController =  TextEditingController();
  TextEditingController whereDoController =  TextEditingController();
  TextEditingController pipesController =  TextEditingController();
  TextEditingController comments5Controller =  TextEditingController();


    //Existing Radiator And Location Controller

  TextEditingController roomController =  TextEditingController();  
  TextEditingController sizeController =  TextEditingController();
  TextEditingController whereController =  TextEditingController();
  TextEditingController newController =  TextEditingController();
  TextEditingController pipeSizeController =  TextEditingController();
  TextEditingController totalRadsController =  TextEditingController();
  TextEditingController howManyToChangeController =  TextEditingController();
  TextEditingController pDoController =  TextEditingController();
  TextEditingController howManyTrvsController =  TextEditingController();
  TextEditingController howManyLockshieldsController =  TextEditingController();
  TextEditingController comments6Controller =  TextEditingController();


  //Electrical System Controller

  TextEditingController mainFuseController =  TextEditingController();  
  TextEditingController boardTypeController =  TextEditingController();
  TextEditingController numberOfSpareController =  TextEditingController();
  TextEditingController typeofFuseController =  TextEditingController();
  TextEditingController distanceToASHPController =  TextEditingController();
  TextEditingController standardMaterialsController =  TextEditingController();
  TextEditingController comments7Controller =  TextEditingController();

   //Extra Information And Measurements Controller

  TextEditingController anyPropertyController =  TextEditingController();  
  TextEditingController approximateController =  TextEditingController();
  TextEditingController loftHatchController =  TextEditingController();
  TextEditingController loftBoardedController =  TextEditingController();
  TextEditingController loftHaveController =  TextEditingController();

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
 

}