// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'ASHPModel.dart';
//
// // **************************************************************************
// // JsonSerializableGenerator
// // **************************************************************************
//
// ASHPModel _$ASHPModelFromJson(Map<String, dynamic> json) => ASHPModel(
//       uid: json['uid'] as String?,
//       username: json['username'] as String?,
//       ASHPId: json['ASHPId'] as String?,
//       installDate: json['installDate'] as String?,
//       installType: json['installType'] as String?,
//       manPower: json['manPower'] as String?,
//       surveydate: json['surveydate'] as String?,
//       surveyby: json['surveyby'] as String?,
//       customername: json['customername'] as String?,
//       propertyaddress: json['propertyaddress'] as String?,
//       postcode: json['postcode'] as String?,
//       customercontact: json['customercontact'] as String?,
//       email: json['email'] as String?,
//       parking: json['parking'] as String?,
//       skipNeede: json['skipNeede'] as String?,
//       skipPermitrequired: json['skipPermitrequired'] as String?,
//       propertyDetailsComments: json['propertyDetailsComments'] as String?,
//       boilerType: json['boilerType'] as String?,
//       boilerLocation: json['boilerLocation'] as String?,
//       boilerRipOut: json['boilerRipOut'] as String?,
//       BoilerComments: json['BoilerComments'] as String?,
//       cylinder: json['cylinder'] as String?,
//       cylinderLocation: json['cylinderLocation'] as String?,
//       cylinderRipOut: json['cylinderRipOut'] as String?,
//       cylinderComments3: json['cylinderComments3'] as String?,
//       abbestosRemoval: json['abbestosRemoval'] as String?,
//       abbestosComments4: json['abbestosComments4'] as String?,
//       ripOutrequired: json['ripOutrequired'] as String?,
//       makeAndModel: json['makeAndModel'] as String?,
//       ashpLocation: json['ashpLocation'] as String?,
//       doWeNeedToBuildABase: json['doWeNeedToBuildABase'] as String?,
//       baseConstructedWith: json['baseConstructedWith'] as String?,
//       whoIsBuildingTheBase: json['whoIsBuildingTheBase'] as String?,
//       howManyHeatingZones: json['howManyHeatingZones'] as String?,
//       describeFlow: json['describeFlow'] as String?,
//       pipesAndLagging: json['pipesAndLagging'] as String?,
//       doWeNeedTrunking: json['doWeNeedTrunking'] as String?,
//       doweNeedScaffold: json['doweNeedScaffold'] as String?,
//       doWeNeedAGenie: json['doWeNeedAGenie'] as String?,
//       describeCondensate: json['describeCondensate'] as String?,
//       anyPumps: json['anyPumps'] as String?,
//       system25Pump: json['system25Pump'] as String?,
//       anyZone: json['anyZone'] as String?,
//       whatType: json['whatType'] as String?,
//       newCylinderMake: json['newCylinderMake'] as String?,
//       newCylinderLocation: json['newCylinderLocation'] as String?,
//       newLimeScale: json['newLimeScale'] as String?,
//       newDoWe: json['newDoWe'] as String?,
//       newBaseConStructed: json['newBaseConStructed'] as String?,
//       newWhoIs: json['newWhoIs'] as String?,
//       newWhereDo: json['newWhereDo'] as String?,
//       newPipes: json['newPipes'] as String?,
//       newCylinderComments: json['newCylinderComments'] as String?,
//       room: json['room'] as String?,
//       size: json['size'] as String?,
//       where: json['where'] as String?,
//       existingRaidLocation: json['existingRaidLocation'] as String?,
//       pipeSize: json['pipeSize'] as String?,
//       totalRads: json['totalRads'] as String?,
//       howManyToChange: json['howManyToChange'] as String?,
//       pDo: json['pDo'] as String?,
//       howManyTrvs: json['howManyTrvs'] as String?,
//       howManyLockshields: json['howManyLockshields'] as String?,
//       existingRadiatorComments: json['existingRadiatorComments'] as String?,
//       mainFuse: json['mainFuse'] as String?,
//       boardType: json['boardType'] as String?,
//       numberOfSpare: json['numberOfSpare'] as String?,
//       typeofFuse: json['typeofFuse'] as String?,
//       distanceToASHP: json['distanceToASHP'] as String?,
//       standardMaterials: json['standardMaterials'] as String?,
//       electricalSystemComments: json['electricalSystemComments'] as String?,
//       anyProperty: json['anyProperty'] as String?,
//       approximate: json['approximate'] as String?,
//       loftHatch: json['loftHatch'] as String?,
//       loftBoarded: json['loftBoarded'] as String?,
//       loftHaveLight: json['loftHaveLight'] as String?,
//       createdDateTime: DateTime.parse(json['createdDateTime'] as String),
//       images:
//           (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
//     );
//
// Map<String, dynamic> _$ASHPModelToJson(ASHPModel instance) => <String, dynamic>{
//       'uid':instance.uid,
//       'username':instance.username,
//       'ASHPId': instance.ASHPId,
//       'installDate': instance.installDate,
//       'installType': instance.installType,
//       'manPower': instance.manPower,
//       'surveydate': instance.surveydate,
//       'surveyby': instance.surveyby,
//       'customername': instance.customername,
//       'propertyaddress': instance.propertyaddress,
//       'postcode': instance.postcode,
//       'customercontact': instance.customercontact,
//       'email': instance.email,
//       'parking': instance.parking,
//       'skipNeede': instance.skipNeede,
//       'skipPermitrequired': instance.skipPermitrequired,
//       'propertyDetailsComments': instance.propertyDetailsComments,
//       'boilerType': instance.boilerType,
//       'boilerLocation': instance.boilerLocation,
//       'boilerRipOut': instance.boilerRipOut,
//       'BoilerComments': instance.BoilerComments,
//       'cylinder': instance.cylinder,
//       'cylinderLocation': instance.cylinderLocation,
//       'cylinderRipOut': instance.cylinderRipOut,
//       'cylinderComments3': instance.cylinderComments3,
//       'abbestosRemoval': instance.abbestosRemoval,
//       'abbestosComments4': instance.abbestosComments4,
//       'ripOutrequired': instance.ripOutrequired,
//       'makeAndModel': instance.makeAndModel,
//       'ashpLocation': instance.ashpLocation,
//       'doWeNeedToBuildABase': instance.doWeNeedToBuildABase,
//       'baseConstructedWith': instance.baseConstructedWith,
//       'whoIsBuildingTheBase': instance.whoIsBuildingTheBase,
//       'howManyHeatingZones': instance.howManyHeatingZones,
//       'describeFlow': instance.describeFlow,
//       'pipesAndLagging': instance.pipesAndLagging,
//       'doWeNeedTrunking': instance.doWeNeedTrunking,
//       'doweNeedScaffold': instance.doweNeedScaffold,
//       'doWeNeedAGenie': instance.doWeNeedAGenie,
//       'describeCondensate': instance.describeCondensate,
//       'anyPumps': instance.anyPumps,
//       'system25Pump': instance.system25Pump,
//       'anyZone': instance.anyZone,
//       'whatType': instance.whatType,
//       'newCylinderMake': instance.newCylinderMake,
//       'newCylinderLocation': instance.newCylinderLocation,
//       'newLimeScale': instance.newLimeScale,
//       'newDoWe': instance.newDoWe,
//       'newBaseConStructed': instance.newBaseConStructed,
//       'newWhoIs': instance.newWhoIs,
//       'newWhereDo': instance.newWhereDo,
//       'newPipes': instance.newPipes,
//       'newCylinderComments': instance.newCylinderComments,
//       'room': instance.room,
//       'size': instance.size,
//       'where': instance.where,
//       'existingRaidLocation': instance.existingRaidLocation,
//       'pipeSize': instance.pipeSize,
//       'totalRads': instance.totalRads,
//       'howManyToChange': instance.howManyToChange,
//       'pDo': instance.pDo,
//       'howManyTrvs': instance.howManyTrvs,
//       'howManyLockshields': instance.howManyLockshields,
//       'existingRadiatorComments': instance.existingRadiatorComments,
//       'mainFuse': instance.mainFuse,
//       'boardType': instance.boardType,
//       'numberOfSpare': instance.numberOfSpare,
//       'typeofFuse': instance.typeofFuse,
//       'distanceToASHP': instance.distanceToASHP,
//       'standardMaterials': instance.standardMaterials,
//       'electricalSystemComments': instance.electricalSystemComments,
//       'anyProperty': instance.anyProperty,
//       'approximate': instance.approximate,
//       'loftHatch': instance.loftHatch,
//       'loftBoarded': instance.loftBoarded,
//       'loftHaveLight': instance.loftHaveLight,
//       'createdDateTime': instance.createdDateTime==null?DateTime.now().toIso8601String():instance.createdDateTime?.toIso8601String(),
//       'images': instance.images,
//     };
