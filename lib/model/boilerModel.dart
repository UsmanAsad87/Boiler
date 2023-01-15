import 'package:json_annotation/json_annotation.dart';

part 'boilerModel.g.dart';

@JsonSerializable()

class BoilerModel {
  String? boilerId;
  String? uid;
  String? username;
  DateTime? createdDateTime;
  //1 form
  String? installDate;
  String? installType;
  String? manPower;
  String? surveydate;
  String? customername;
  String? propertyaddress;
  String? postcode;
  String? fuelType;
  String? limeScaleReducerRequired;

  //2 form
  //Existing boiler system details
  String? existingMakeModel;
  String? existingBoilerType;
  String? existingBoilerPosition;
  String? existingBoilerLocation;
  String? existingHeatingControl;
  String? existingRemoval;
  String? existingComments;
  //Proposed new boiler system details
  String? newMakeModel;
  String? newBoilerType;
  String? newBoilerPosition;
  String? newBoilerLocation;
  String? newFuelOrientation;
  String? newPlumeKitReq;
  String? newHeatingControl;
  String? newHeatingControlLocation;
  String? newUpgradeReq;
  String? newCondensateLocation;
  String? newPumpInstalled;
  String? newZoneValve;
  String? newIsBrickUpReq;

  //3 form
  //Proposed New ASHP System details
  String? newRadiaterTrv;
  String? newGas;
  String? newGFlowReturn;
  String? newHotAndCold;
  String? newCondensate;
  String? newAccess;
  String? newLadders;
  String? makeAdditionalNotes;


  //4 form
  //Electrical works
  String? electricianReq;
  String? whatElectricianDo;
  String? whatControlFitting;
  String? newDoWe;
  String? newBaseConStructed;
  String? newWhoIs;
  String? newWhereDo;
  String? newPipes;
  String? newCylinderComments;


  //6 form
  List<String>? images;
  BoilerModel({
    this.uid='',
    this.username='',
    this.boilerId ='',
    this.createdDateTime,
    this.installDate='',
    this.installType='',
    this.manPower='',
    this.surveydate='',

    this.customername='',
    this.propertyaddress='',
    this.postcode='',
    this.fuelType='',
    this.limeScaleReducerRequired='',

    //2 form
    //Existing boiler system details
    this.existingMakeModel='',
    this.existingBoilerType='',
    this.existingBoilerPosition='',
    this.existingBoilerLocation='',
    this.existingHeatingControl='',
    this.existingRemoval='',
    this.existingComments='',
    //Proposed new boiler system details
    this.newMakeModel='',
    this.newBoilerType='',
    this.newBoilerPosition='',
    this.newBoilerLocation='',
    this.newFuelOrientation='',
    this.newPlumeKitReq='',
    this.newHeatingControl='',
    this.newHeatingControlLocation='',
    this.newUpgradeReq='',
    this.newCondensateLocation='',
    this.newPumpInstalled='',
    this.newZoneValve='',
    this.newIsBrickUpReq='',

    //3 form
    //Proposed New ASHP System details
    this.newRadiaterTrv='',
    this.newGas='',
    this.newGFlowReturn='',
    this.newHotAndCold='',
    this.newCondensate='',
    this.newAccess='',
    this.newLadders='',
    this.makeAdditionalNotes='',


    //4 form
    //Electrical works
    this.electricianReq='',
    this.whatElectricianDo='',
    this.whatControlFitting='',
    this.newDoWe='',
    this.newBaseConStructed='',
    this.newWhoIs='',
    this.newWhereDo='',
    this.newPipes='',
    this.newCylinderComments='',


    //6 form
    this.images,
  });

  BoilerModel.named({
    this.uid,
    this.username,
    this.boilerId ,
    this.createdDateTime,
    this.installDate,
    this.installType,
    this.manPower,
    this.surveydate,

    this.customername,
    this.propertyaddress,
    this.postcode,
    this.fuelType,
    this.limeScaleReducerRequired,

    //2 form
    //Existing boiler system details
    this.existingMakeModel,
    this.existingBoilerType,
    this.existingBoilerPosition,
    this.existingBoilerLocation,
    this.existingHeatingControl,
    this.existingRemoval,
    this.existingComments,
    //Proposed new boiler system details
    this.newMakeModel,
    this.newBoilerType,
    this.newBoilerPosition,
    this.newBoilerLocation,
    this.newFuelOrientation,
    this.newPlumeKitReq,
    this.newHeatingControl,
    this.newHeatingControlLocation,
    this.newUpgradeReq,
    this.newCondensateLocation,
    this.newPumpInstalled,
    this.newZoneValve,
    this.newIsBrickUpReq,

    //3 form
    //Proposed New ASHP System details
    this.newRadiaterTrv,
    this.newGas,
    this.newGFlowReturn,
    this.newHotAndCold,
    this.newCondensate,
    this.newAccess,
    this.newLadders,
    this.makeAdditionalNotes,


    //4 form
    //Electrical works
    this.electricianReq,
    this.whatElectricianDo,
    this.whatControlFitting,
    this.newDoWe,
    this.newBaseConStructed,
    this.newWhoIs,
    this.newWhereDo,
    this.newPipes,
    this.newCylinderComments,


    //6 form
    this.images,
  });

   BoilerModel copyWith({
     String? boilerId,
     String? uid,
     String? username,
     DateTime? createdDateTime,
     //1 form
     String? installDate,
     String? installType,
     String? manPower,
     String? surveydate,
     String? customername,
     String? propertyaddress,
     String? postcode,
     String? fuelType,
     String? limeScaleReducerRequired,

     //2 form
     //Existing boiler system details
     String? existingMakeModel,
     String? existingBoilerType,
     String? existingBoilerPosition,
     String? existingBoilerLocation,
     String? existingHeatingControl,
     String? existingRemoval,
     String? existingComments,
     //Proposed new boiler system details
     String? newMakeModel,
     String? newBoilerType,
     String? newBoilerPosition,
     String? newBoilerLocation,
     String? newFuelOrientation,
     String? newPlumeKitReq,
     String? newHeatingControl,
     String? newHeatingControlLocation,
     String? newUpgradeReq,
     String? newCondensateLocation,
     String? newPumpInstalled,
     String? newZoneValve,
     String? newIsBrickUpReq,

     //3 form
     //Proposed New ASHP System details
     String? newRadiaterTrv,
     String? newGas,
     String? newGFlowReturn,
     String? newHotAndCold,
     String? newCondensate,
     String? newAccess,
     String? newLadders,
     String? makeAdditionalNotes,

     //4 form
     //Electrical works
     String? electricianReq,
     String? whatElectricianDo,
     String? whatControlFitting,
     String? newDoWe,
     String? newBaseConStructed,
     String? newWhoIs,
     String? newWhereDo,
     String? newPipes,
     String? newCylinderComments,


     //6 form
     List<String>? images,
  }) {
    return BoilerModel.named(
      uid:uid ?? this.uid ,
      username: username?? this.username ,
      boilerId :boilerId  ?? this.boilerId  ,
      createdDateTime:createdDateTime ?? this.createdDateTime ,
      installDate:installDate ?? this.installDate ,
      installType:installType ?? this.installType ,
      manPower: manPower?? this.manPower ,
      surveydate:surveydate ?? this.surveydate ,

      customername:customername ?? this.customername ,
      propertyaddress:propertyaddress ?? this.propertyaddress ,
      postcode:postcode ?? this.postcode ,
      fuelType:fuelType ?? this.fuelType ,
      limeScaleReducerRequired: limeScaleReducerRequired?? this.limeScaleReducerRequired ,

      //2 form
      //Existing boiler system details
      existingMakeModel:existingMakeModel ?? this.existingMakeModel ,
      existingBoilerType:existingBoilerType ?? this.existingBoilerType ,
      existingBoilerPosition: existingBoilerPosition?? this.existingBoilerPosition ,
      existingBoilerLocation: existingBoilerLocation?? this.existingBoilerLocation ,
      existingHeatingControl:existingHeatingControl ?? this.existingHeatingControl ,
      existingRemoval:existingRemoval ?? this.existingRemoval ,
      existingComments:existingComments ?? this.existingComments ,
      //Proposed new boiler system details
      newMakeModel:newMakeModel ?? this.newMakeModel ,
      newBoilerType: newBoilerType?? this.newBoilerType ,
      newBoilerPosition:newBoilerPosition ?? this.newBoilerPosition ,
      newBoilerLocation:newBoilerLocation ?? this.newBoilerLocation ,
      newFuelOrientation:newFuelOrientation ?? this.newFuelOrientation ,
      newPlumeKitReq:newPlumeKitReq ?? this.newPlumeKitReq ,
      newHeatingControl:newHeatingControl ?? this.newHeatingControl ,
      newHeatingControlLocation:newHeatingControlLocation ?? this.newHeatingControlLocation ,
      newUpgradeReq:newUpgradeReq ?? this.newUpgradeReq ,
      newCondensateLocation:newCondensateLocation ?? this.newCondensateLocation ,
      newPumpInstalled:newCondensateLocation ?? this.newCondensateLocation ,
      newZoneValve: newZoneValve?? this.newZoneValve ,
      newIsBrickUpReq:newIsBrickUpReq ?? this.newIsBrickUpReq ,

      //3 form
      //Proposed New ASHP System details
      newRadiaterTrv:newRadiaterTrv ?? this.newRadiaterTrv ,
      newGas:newGas ?? this.newGas ,
      newGFlowReturn:newGFlowReturn ?? this.newGFlowReturn ,
      newHotAndCold:newHotAndCold ?? this.newHotAndCold ,
      newCondensate:newCondensate ?? this.newCondensate ,
      newAccess: newAccess?? this.newAccess ,
      newLadders:newLadders ?? this.newLadders ,
      makeAdditionalNotes:makeAdditionalNotes ?? this.makeAdditionalNotes ,

      //4 form
      //Electrical works
      electricianReq: electricianReq?? this.electricianReq ,
      whatElectricianDo:whatElectricianDo ?? this. whatElectricianDo,
      whatControlFitting: whatControlFitting?? this.whatControlFitting ,
      newDoWe:newDoWe ?? this.newDoWe ,
      newBaseConStructed:newBaseConStructed ?? this.newBaseConStructed ,
      newWhoIs:newWhoIs ?? this.newWhoIs ,
      newWhereDo:newWhereDo ?? this.newWhereDo ,
      newPipes: newPipes?? this.newPipes ,
      newCylinderComments:newCylinderComments ?? this.newCylinderComments ,


      //6 form
      images:images ?? this.images ,
    );
  }

  factory BoilerModel.fromJson(Map<String, dynamic> json) => _$BoilerModelFromJson(json);
  Map<String, dynamic> toJson() => _$BoilerModelToJson(this);
}
