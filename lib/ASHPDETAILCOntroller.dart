import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../authservices/auth.dart';

class ASHPdetailcontroller extends GetxController {
  //complete ashp detail form 1
  // TextEditingController name = TextEditingController();

  // TextEditingController address = TextEditingController();
  // TextEditingController postcode = TextEditingController();
  // TextEditingController mobilenum = TextEditingController();

  // TextEditingController date = TextEditingController();
  TextEditingController boilermodelnum = TextEditingController();
  TextEditingController kwssize = TextEditingController();

  TextEditingController location = TextEditingController();
  TextEditingController modelnum = TextEditingController();
  TextEditingController sizeliters = TextEditingController();
  TextEditingController location2 = TextEditingController();

  //form 2
  TextEditingController propertyadrress = TextEditingController();
  TextEditingController dateofassesment = TextEditingController();
  TextEditingController assesmentcarriedout = TextEditingController();

  //form3
  TextEditingController customername = TextEditingController();
  TextEditingController address2 = TextEditingController();
  TextEditingController postcode2 = TextEditingController();

  TextEditingController installer = TextEditingController();
  TextEditingController installationdate = TextEditingController();

  TextEditingController originaljobdiscription = TextEditingController();
  TextEditingController proposedvaraition = TextEditingController();

  //form4
  TextEditingController completemcsbenchmarkuploadpic1 =
      TextEditingController();
  TextEditingController projectrefrence = TextEditingController();
  TextEditingController installationadress = TextEditingController();

  TextEditingController customername2 = TextEditingController();

  TextEditingController customeremail = TextEditingController();

  TextEditingController completedby = TextEditingController();

  TextEditingController date2 = TextEditingController();

  TextEditingController technision = TextEditingController();

  TextEditingController mcsno = TextEditingController();

  TextEditingController contactnum = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController heatpumptype = TextEditingController();
  TextEditingController heatpumpmodelnum = TextEditingController();
  TextEditingController serailnum = TextEditingController();
  TextEditingController indoormodelnum = TextEditingController();
  TextEditingController serialnum = TextEditingController();
  TextEditingController interfacemodelnum = TextEditingController();
  TextEditingController serialnum2 = TextEditingController();
  TextEditingController contactnum2 = TextEditingController();
  TextEditingController manufacture = TextEditingController();
  TextEditingController installeraspermanufacture = TextEditingController();
  TextEditingController electricalsupply = TextEditingController();
  TextEditingController risitancetoearth = TextEditingController();
  TextEditingController shortcircuittest = TextEditingController();
  TextEditingController visiualcondition = TextEditingController();
  TextEditingController allsensorchecked = TextEditingController();
  TextEditingController incommimgvoltage1 = TextEditingController();
  TextEditingController incommimgvoltage2 = TextEditingController();
  TextEditingController incommimgvoltage3 = TextEditingController();
  TextEditingController incommimgvoltage4 = TextEditingController();
  TextEditingController incommimgvoltage5 = TextEditingController();
  TextEditingController incommimgvoltage6 = TextEditingController();
  TextEditingController incommimgvoltage7 = TextEditingController();
  TextEditingController incommimgvoltage8 = TextEditingController();
  TextEditingController incommimgvoltage9 = TextEditingController();

//form5

  TextEditingController runningmode = TextEditingController();
  TextEditingController compstart = TextEditingController();
  TextEditingController heatcurvesetting = TextEditingController();
  TextEditingController collectorpumpsetting = TextEditingController();
  TextEditingController maxflowtemp = TextEditingController();
  TextEditingController chpumpsetting = TextEditingController();
  TextEditingController maxatoutdooetemp = TextEditingController();
  
  TextEditingController minflowtemp = TextEditingController();
  TextEditingController dhwstop = TextEditingController();
  TextEditingController minatoutdooetmp2 = TextEditingController();
  TextEditingController legionollnacycletemp = TextEditingController();
  TextEditingController heatstoptemp = TextEditingController();
  TextEditingController legilonafrequency = TextEditingController();

  TextEditingController legilonafrequency2 = TextEditingController();
  
  TextEditingController legilonafrequenc3 = TextEditingController();
  
  TextEditingController legilonafrequency4 = TextEditingController();
  
  TextEditingController legilonafrequency5 = TextEditingController();
  
  TextEditingController legilonafrequenc6 = TextEditingController();
  
  TextEditingController outdoor = TextEditingController();
  
  TextEditingController indoor = TextEditingController();
  
  TextEditingController flow = TextEditingController();
  
  TextEditingController return2 = TextEditingController();
  
  TextEditingController hprunninghours = TextEditingController();
  
  TextEditingController kwhreading = TextEditingController();
  
  TextEditingController superheat = TextEditingController();
  
  TextEditingController tevinlet = TextEditingController();
  
  TextEditingController auxheater = TextEditingController();
  
  TextEditingController sourceout = TextEditingController();
  
  TextEditingController discharge = TextEditingController();
  
  TextEditingController suction = TextEditingController();
  
  TextEditingController dwhrunnghours = TextEditingController();
  
  TextEditingController kwhmeter2running = TextEditingController();
  
  TextEditingController subcooling = TextEditingController();
  
  TextEditingController dwhtemp = TextEditingController();
  
  TextEditingController heatmeterreading = TextEditingController();
  //form6
  
  TextEditingController antifreezemakeandtype = TextEditingController();
  
  TextEditingController antivibrationfeet = TextEditingController();
  
  TextEditingController freezeprotection = TextEditingController();
  
  TextEditingController condensatedraining = TextEditingController();
  
  TextEditingController correctclearnce = TextEditingController();
  
  TextEditingController evaporatorclear = TextEditingController();
  
  TextEditingController instlledonsuitble = TextEditingController();
  
  TextEditingController insulatedandvaporsealed = TextEditingController();
  
  TextEditingController splitsystemonly = TextEditingController();
  
  TextEditingController refrigerentnum = TextEditingController();
  
  TextEditingController legolenafrequency = TextEditingController();
  
  TextEditingController headerpipediameter = TextEditingController();
  
  TextEditingController totalnumofloops = TextEditingController();
  
  TextEditingController pressuretested = TextEditingController();
  
  TextEditingController systemflushed = TextEditingController();
  
  TextEditingController totallengthofcontroler = TextEditingController();
  
  TextEditingController biosideused = TextEditingController();
  
  TextEditingController totalleghthofheder = TextEditingController();
  
  TextEditingController thermaltransfer = TextEditingController();
  
  TextEditingController expansionvezal = TextEditingController();
  
  TextEditingController collectorsystempressure = TextEditingController();
  
  TextEditingController insulationvaoprsealed = TextEditingController();
  
  TextEditingController collectorinstalled = TextEditingController();
  
  TextEditingController emitertypes = TextEditingController();
  
  TextEditingController heating = TextEditingController();
  
  TextEditingController systempressure = TextEditingController();
  
  TextEditingController strainers = TextEditingController();
  
  TextEditingController expansionvessel = TextEditingController();
  
  TextEditingController htgsystem = TextEditingController();
  
  TextEditingController safetyrelief = TextEditingController();
  
  TextEditingController htgsystemcleaner2 = TextEditingController();
  
  TextEditingController bufferstorevolume = TextEditingController();
  
  TextEditingController htgsystemwater = TextEditingController();
  
  TextEditingController circulationpumpsetting = TextEditingController();
  
  TextEditingController inhibitor = TextEditingController();
  
  TextEditingController htgsystempurgedair = TextEditingController();
  
  TextEditingController dhwcylinder = TextEditingController();
  
  TextEditingController g3commsioning = TextEditingController();
  
  TextEditingController systeminstalledasperdesign = TextEditingController();
  
  TextEditingController doallemitors = TextEditingController();
  
  // TextEditingController splitsystemonly = TextEditingController();
  
  // TextEditingController refrigerentnum = TextEditingController();
  
  // TextEditingController legolenafrequency = TextEditingController();
  
  // TextEditingController headerpipediameter = TextEditingController();
  
  // TextEditingController totalnumofloops = TextEditingController();
  
  // TextEditingController pressuretested = TextEditingController();
  
  // TextEditingController systemflushed = TextEditingController();
  
  // TextEditingController totallengthofcontroler = TextEditingController();
  
  // TextEditingController biosideused = TextEditingController();
  
  // TextEditingController totalleghthofheder = TextEditingController();
  
  // TextEditingController thermaltransfer = TextEditingController();
  
  // TextEditingController expansionvezal = TextEditingController();
  
  // TextEditingController collectorsystempressure = TextEditingController();
  



  //TextEditingController boilermakeandmodel = TextEditingController();

  var ispasshide = true.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
