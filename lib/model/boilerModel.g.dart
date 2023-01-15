// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boilerModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoilerModel _$BoilerModelFromJson(Map<String, dynamic> json) => BoilerModel(
      uid: json['uid'] as String? ?? '',
      username: json['username'] as String? ?? '',
      boilerId: json['boilerId'] as String? ?? '',
      createdDateTime: json['createdDateTime'] == null
          ? null
          : DateTime.parse(json['createdDateTime'] as String),
      installDate: json['installDate'] as String? ?? '',
      installType: json['installType'] as String? ?? '',
      manPower: json['manPower'] as String? ?? '',
      surveydate: json['surveydate'] as String? ?? '',
      customername: json['customername'] as String? ?? '',
      propertyaddress: json['propertyaddress'] as String? ?? '',
      postcode: json['postcode'] as String? ?? '',
      fuelType: json['fuelType'] as String? ?? '',
      limeScaleReducerRequired:
          json['limeScaleReducerRequired'] as String? ?? '',
      existingMakeModel: json['existingMakeModel'] as String? ?? '',
      existingBoilerType: json['existingBoilerType'] as String? ?? '',
      existingBoilerPosition: json['existingBoilerPosition'] as String? ?? '',
      existingBoilerLocation: json['existingBoilerLocation'] as String? ?? '',
      existingHeatingControl: json['existingHeatingControl'] as String? ?? '',
      existingRemoval: json['existingRemoval'] as String? ?? '',
      existingComments: json['existingComments'] as String? ?? '',
      newMakeModel: json['newMakeModel'] as String? ?? '',
      newBoilerType: json['newBoilerType'] as String? ?? '',
      newBoilerPosition: json['newBoilerPosition'] as String? ?? '',
      newBoilerLocation: json['newBoilerLocation'] as String? ?? '',
      newFuelOrientation: json['newFuelOrientation'] as String? ?? '',
      newPlumeKitReq: json['newPlumeKitReq'] as String? ?? '',
      newHeatingControl: json['newHeatingControl'] as String? ?? '',
      newHeatingControlLocation:
          json['newHeatingControlLocation'] as String? ?? '',
      newUpgradeReq: json['newUpgradeReq'] as String? ?? '',
      newCondensateLocation: json['newCondensateLocation'] as String? ?? '',
      newPumpInstalled: json['newPumpInstalled'] as String? ?? '',
      newZoneValve: json['newZoneValve'] as String? ?? '',
      newIsBrickUpReq: json['newIsBrickUpReq'] as String? ?? '',
      newRadiaterTrv: json['newRadiaterTrv'] as String? ?? '',
      newGas: json['newGas'] as String? ?? '',
      newGFlowReturn: json['newGFlowReturn'] as String? ?? '',
      newHotAndCold: json['newHotAndCold'] as String? ?? '',
      newCondensate: json['newCondensate'] as String? ?? '',
      newAccess: json['newAccess'] as String? ?? '',
      newLadders: json['newLadders'] as String? ?? '',
      makeAdditionalNotes: json['makeAdditionalNotes'] as String? ?? '',
      electricianReq: json['electricianReq'] as String? ?? '',
      whatElectricianDo: json['whatElectricianDo'] as String? ?? '',
      whatControlFitting: json['whatControlFitting'] as String? ?? '',
      newDoWe: json['newDoWe'] as String? ?? '',
      newBaseConStructed: json['newBaseConStructed'] as String? ?? '',
      newWhoIs: json['newWhoIs'] as String? ?? '',
      newWhereDo: json['newWhereDo'] as String? ?? '',
      newPipes: json['newPipes'] as String? ?? '',
      newCylinderComments: json['newCylinderComments'] as String? ?? '',
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BoilerModelToJson(BoilerModel instance) =>
    <String, dynamic>{
      'boilerId': instance.boilerId,
      'uid': instance.uid,
      'username': instance.username,
      'createdDateTime':  instance.createdDateTime==null?DateTime.now().toIso8601String():instance.createdDateTime?.toIso8601String(),
'installDate': instance.installDate,
      'installType': instance.installType,
      'manPower': instance.manPower,
      'surveydate': instance.surveydate,
      'customername': instance.customername,
      'propertyaddress': instance.propertyaddress,
      'postcode': instance.postcode,
      'fuelType': instance.fuelType,
      'limeScaleReducerRequired': instance.limeScaleReducerRequired,
      'existingMakeModel': instance.existingMakeModel,
      'existingBoilerType': instance.existingBoilerType,
      'existingBoilerPosition': instance.existingBoilerPosition,
      'existingBoilerLocation': instance.existingBoilerLocation,
      'existingHeatingControl': instance.existingHeatingControl,
      'existingRemoval': instance.existingRemoval,
      'existingComments': instance.existingComments,
      'newMakeModel': instance.newMakeModel,
      'newBoilerType': instance.newBoilerType,
      'newBoilerPosition': instance.newBoilerPosition,
      'newBoilerLocation': instance.newBoilerLocation,
      'newFuelOrientation': instance.newFuelOrientation,
      'newPlumeKitReq': instance.newPlumeKitReq,
      'newHeatingControl': instance.newHeatingControl,
      'newHeatingControlLocation': instance.newHeatingControlLocation,
      'newUpgradeReq': instance.newUpgradeReq,
      'newCondensateLocation': instance.newCondensateLocation,
      'newPumpInstalled': instance.newPumpInstalled,
      'newZoneValve': instance.newZoneValve,
      'newIsBrickUpReq': instance.newIsBrickUpReq,
      'newRadiaterTrv': instance.newRadiaterTrv,
      'newGas': instance.newGas,
      'newGFlowReturn': instance.newGFlowReturn,
      'newHotAndCold': instance.newHotAndCold,
      'newCondensate': instance.newCondensate,
      'newAccess': instance.newAccess,
      'newLadders': instance.newLadders,
      'makeAdditionalNotes': instance.makeAdditionalNotes,
      'electricianReq': instance.electricianReq,
      'whatElectricianDo': instance.whatElectricianDo,
      'whatControlFitting': instance.whatControlFitting,
      'newDoWe': instance.newDoWe,
      'newBaseConStructed': instance.newBaseConStructed,
      'newWhoIs': instance.newWhoIs,
      'newWhereDo': instance.newWhereDo,
      'newPipes': instance.newPipes,
      'newCylinderComments': instance.newCylinderComments,
      'images': instance.images,
    };