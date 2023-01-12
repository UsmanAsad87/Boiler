import 'package:json_annotation/json_annotation.dart';

part 'ASHPModel.g.dart';

@JsonSerializable()

class ASHPModel {
  String? ASHPId;
  String? uid;
  DateTime? createdDateTime;
  //1 form
  String? installDate;
  String? installType;
  String? manPower;
  String? surveydate;
  String? surveyby;
  String? customername;
  String? propertyaddress;
  String? postcode;
  String? customercontact;
  String? email;

  //2 form
  String? parking;
  String? skipNeede;
  String? skipPermitrequired;
  String? propertyDetailsComments;
  String? boilerType;
  String? boilerLocation;
  String? boilerRipOut;
  String? BoilerComments;
  String? cylinder;
  String? cylinderLocation;
  String? cylinderRipOut;
  String? cylinderComments3;
  String? abbestosRemoval;
  String? abbestosComments4;
  String? ripOutrequired;

  //3 form
  //Proposed New ASHP System details
  String? makeAndModel;
  String? ashpLocation;
  String? doWeNeedToBuildABase;
  String? baseConstructedWith;
  String? whoIsBuildingTheBase;
  String? howManyHeatingZones;
  String? describeFlow;
  String? pipesAndLagging;
  String? doWeNeedTrunking;
  String? doweNeedScaffold;
  String? doWeNeedAGenie;
  String? describeCondensate;
  String? anyPumps;
  String? system25Pump;
  String? anyZone;
  String? whatType;

  //4 form
  //proposed new cylinder
  String? newCylinderMake;
  String? newCylinderLocation;
  String? newLimeScale;
  String? newDoWe;
  String? newBaseConStructed;
  String? newWhoIs;
  String? newWhereDo;
  String? newPipes;
  String? newCylinderComments;

  //5 form
  //Existing radiator and location
  String? room;
  String? size;
  String? where;
  String? existingRaidLocation;
  String? pipeSize;
  String? totalRads;
  String? howManyToChange;
  String? pDo;
  String? howManyTrvs;
  String? howManyLockshields;
  String? existingRadiatorComments;

  //6 form
  //Electrical System
  String? mainFuse;
  String? boardType;
  String? numberOfSpare;
  String? typeofFuse;
  String? distanceToASHP;
  String? standardMaterials;
  String? electricalSystemComments;

  //7 form
  //extra pics
  String? anyProperty;
  String? approximate;
  String? loftHatch;
  String? loftBoarded;
  String? loftHaveLight;

  //8 form
  List<String>? images;
  ASHPModel({
    this.uid='',
    this.ASHPId ='',
    this.installDate='',
    this.installType='',
    this.manPower='',
    this.surveydate='',
    this.surveyby='',
    this.customername='',
    this.propertyaddress='',
    this.postcode='',
    this.customercontact='',
    this.email='',

    //2 form
    this.parking='',
    this.skipNeede='',
    this.skipPermitrequired='',
    this.propertyDetailsComments='',
    this.boilerType='',
    this.boilerLocation='',
    this.boilerRipOut='',
    this.BoilerComments='',
    this.cylinder='',
    this.cylinderLocation='',
    this.cylinderRipOut='',
    this.cylinderComments3='',
    this.abbestosRemoval='',
    this.abbestosComments4='',
    this.ripOutrequired='',

    //3 form
    //Proposed New ASHP System details
    this.makeAndModel='',
    this.ashpLocation='',
    this.doWeNeedToBuildABase='',
    this.baseConstructedWith='',
    this.whoIsBuildingTheBase='',
    this.howManyHeatingZones='',
    this.describeFlow='',
    this.pipesAndLagging='',
    this.doWeNeedTrunking='',
    this.doweNeedScaffold='',
    this.doWeNeedAGenie='',
    this.describeCondensate='',
    this.anyPumps='',
    this.system25Pump='',
    this.anyZone='',
    this.whatType='',

    //4 form
    //proposed new cylinder
    this.newCylinderMake='',
    this.newCylinderLocation='',
    this.newLimeScale='',
    this.newDoWe='',
    this.newBaseConStructed='',
    this.newWhoIs='',
    this.newWhereDo='',
    this.newPipes='',
    this.newCylinderComments='',

    //5 form
    //Existing radiator and location
    this.room='',
    this.size='',
    this.where='',
    this.existingRaidLocation='',
    this.pipeSize='',
    this.totalRads='',
    this.howManyToChange='',
    this.pDo='',
    this.howManyTrvs='',
    this.howManyLockshields='',
    this.existingRadiatorComments='',

    //6 form
    //Electrical System
    this.mainFuse='',
    this.boardType='',
    this.numberOfSpare='',
    this.typeofFuse='',
    this.distanceToASHP='',
    this.standardMaterials='',
    this.electricalSystemComments='',

    //7 form
    //extra pics
    this.anyProperty='',
    this.approximate='',
    this.loftHatch='',
    this.loftBoarded='',
    this.loftHaveLight='',
    this.createdDateTime,
    this.images,
  });

  ASHPModel.named({
    this.uid,
    this.ASHPId,
    this.installDate,
    this.installType,
    this.manPower,
    this.surveydate,
    this.surveyby,
    this.customername,
    this.propertyaddress,
    this.postcode,
    this.customercontact,
    this.email,

    //2 form
    this.parking,
    this.skipNeede,
    this.skipPermitrequired,
    this.propertyDetailsComments,
    this.boilerType,
    this.boilerLocation,
    this.boilerRipOut,
    this.BoilerComments,
    this.cylinder,
    this.cylinderLocation,
    this.cylinderRipOut,
    this.cylinderComments3,
    this.abbestosRemoval,
    this.abbestosComments4,
    this.ripOutrequired,

    //3 form
    //Proposed New ASHP System details
    this.makeAndModel,
    this.ashpLocation,
    this.doWeNeedToBuildABase,
    this.baseConstructedWith,
    this.whoIsBuildingTheBase,
    this.howManyHeatingZones,
    this.describeFlow,
    this.pipesAndLagging,
    this.doWeNeedTrunking,
    this.doweNeedScaffold,
    this.doWeNeedAGenie,
    this.describeCondensate,
    this.anyPumps,
    this.system25Pump,
    this.anyZone,
    this.whatType,

    //4 form
    //proposed new cylinder
    this.newCylinderMake,
    this.newCylinderLocation,
    this.newLimeScale,
    this.newDoWe,
    this.newBaseConStructed,
    this.newWhoIs,
    this.newWhereDo,
    this.newPipes,
    this.newCylinderComments,

    //5 form
    //Existing radiator and location
    this.room,
    this.size,
    this.where,
    this.existingRaidLocation,
    this.pipeSize,
    this.totalRads,
    this.howManyToChange,
    this.pDo,
    this.howManyTrvs,
    this.howManyLockshields,
    this.existingRadiatorComments,

    //6 form
    //Electrical System
    this.mainFuse,
    this.boardType,
    this.numberOfSpare,
    this.typeofFuse,
    this.distanceToASHP,
    this.standardMaterials,
    this.electricalSystemComments,

    //7 form
    //extra pics
    this.anyProperty,
    this.approximate,
    this.loftHatch,
    this.loftBoarded,
    this.loftHaveLight,
    this.createdDateTime,
    this.images,
  });

  ASHPModel copyWith({
    String? ASHPId,
    String? uid,
    //1 form
    String? installDate,
    String? installType,
    String? manPower,
    String? surveydate,
    String? surveyby,
    String? customername,
    String? propertyaddress,
    String? postcode,
    String? customercontact,
    String? email,

    //2 form
    String? parking,
    String? skipNeede,
    String? skipPermitrequired,
    String? propertyDetailsComments,
    String? boilerType,
    String? boilerLocation,
    String? boilerRipOut,
    String? BoilerComments,
    String? cylinder,
    String? cylinderLocation,
    String? cylinderRipOut,
    String? cylinderComments3,
    String? abbestosRemoval,
    String? abbestosComments4,
    String? ripOutrequired,

    //3 form
    //Proposed New ASHP System details
    String? makeAndModel,
    String? ashpLocation,
    String? doWeNeedToBuildABase,
    String? baseConstructedWith,
    String? whoIsBuildingTheBase,
    String? howManyHeatingZones,
    String? describeFlow,
    String? pipesAndLagging,
    String? doWeNeedTrunking,
    String? doweNeedScaffold,
    String? doWeNeedAGenie,
    String? describeCondensate,
    String? anyPumps,
    String? system25Pump,
    String? anyZone,
    String? whatType,

    //4 form
    //proposed new cylinder
    String? newCylinderMake,
    String? newCylinderLocation,
    String? newLimeScale,
    String? newDoWe,
    String? newBaseConStructed,
    String? newWhoIs,
    String? newWhereDo,
    String? newPipes,
    String? newCylinderComments,

    //5 form
    //Existing radiator and location
    String? room,
    String? size,
    String? where,
    String? existingRaidLocation,
    String? pipeSize,
    String? totalRads,
    String? howManyToChange,
    String? pDo,
    String? howManyTrvs,
    String? howManyLockshields,
    String? existingRadiatorComments,

    //6 form
    //Electrical System
    String? mainFuse,
    String? boardType,
    String? numberOfSpare,
    String? typeofFuse,
    String? distanceToASHP,
    String? standardMaterials,
    String? electricalSystemComments,

    //7 form
    //extra pics
    String? anyProperty,
    String? approximate,
    String? loftHatch,
    String? loftBoarded,
    String? loftHaveLight,

    //8 form
    List<String>? images,
    DateTime? createdDateTime,
  }) {
    print(images);
    return ASHPModel.named(
      uid: uid??this.uid,
      ASHPId: ASHPId ?? this.ASHPId,
      installDate: installDate ?? this.installDate,
      installType: installType ?? this.installType,
      manPower: manPower ?? this.manPower,
      surveydate: surveydate ?? this.surveydate,
      surveyby: surveyby ?? this.surveyby,
      customername: customername ?? this.customername,
      propertyaddress: propertyaddress ?? this.propertyaddress,
      postcode: postcode ?? this.postcode,
      customercontact: customercontact ?? this.customercontact,
      email: email ?? this.email,
      parking: parking ?? this.parking,
      skipNeede: skipNeede ?? this.skipNeede,
      skipPermitrequired: skipPermitrequired ?? this.skipPermitrequired,
      propertyDetailsComments:
      propertyDetailsComments ?? this.propertyDetailsComments,
      boilerType: boilerType ?? this.boilerType,
      boilerLocation: boilerLocation ?? this.boilerLocation,
      boilerRipOut: boilerRipOut ?? this.boilerRipOut,
      BoilerComments: BoilerComments ?? this.BoilerComments,
      cylinder: cylinder ?? this.cylinder,
      cylinderLocation: cylinderLocation ?? this.cylinderLocation,
      cylinderRipOut: cylinderRipOut ?? this.cylinderRipOut,
      cylinderComments3: cylinderComments3 ?? this.cylinderComments3,
      abbestosRemoval: abbestosRemoval ?? this.abbestosRemoval,
      abbestosComments4: abbestosComments4 ?? this.abbestosComments4,
      ripOutrequired: ripOutrequired ?? this.ripOutrequired,
      makeAndModel: makeAndModel ?? this.makeAndModel,
      ashpLocation: ashpLocation ?? this.ashpLocation,
      doWeNeedToBuildABase: doWeNeedToBuildABase ?? this.doWeNeedToBuildABase,
      baseConstructedWith: baseConstructedWith ?? this.baseConstructedWith,
      whoIsBuildingTheBase: whoIsBuildingTheBase ?? this.whoIsBuildingTheBase,
      howManyHeatingZones: howManyHeatingZones ?? this.howManyHeatingZones,
      describeFlow: describeFlow ?? this.describeFlow,
      pipesAndLagging: pipesAndLagging ?? this.pipesAndLagging,
      doWeNeedTrunking: doWeNeedTrunking ?? this.doWeNeedTrunking,
      doweNeedScaffold: doweNeedScaffold ?? this.doweNeedScaffold,
      doWeNeedAGenie: doWeNeedAGenie ?? this.doWeNeedAGenie,
      describeCondensate: describeCondensate ?? this.describeCondensate,
      anyPumps: anyPumps ?? this.anyPumps,
      system25Pump: system25Pump ?? this.system25Pump,
      anyZone: anyZone ?? this.anyZone,
      whatType: whatType ?? this.whatType,
      newCylinderMake: newCylinderMake ?? this.newCylinderMake,
      newCylinderLocation: newCylinderLocation ?? this.newCylinderLocation,
      newLimeScale: newLimeScale ?? this.newLimeScale,
      newDoWe: newDoWe ?? this.newDoWe,
      newBaseConStructed: newBaseConStructed ?? this.newBaseConStructed,
      newWhoIs: newWhoIs ?? this.newWhoIs,
      newWhereDo: newWhereDo ?? this.newWhereDo,
      newPipes: newPipes ?? this.newPipes,
      newCylinderComments: newCylinderComments ?? this.newCylinderComments,
      room: room ?? this.room,
      size: size ?? this.size,
      where: where ?? this.where,
      existingRaidLocation: existingRaidLocation ?? this.existingRaidLocation,
      pipeSize: pipeSize ?? this.pipeSize,
      totalRads: totalRads ?? this.totalRads,
      howManyToChange: howManyToChange ?? this.howManyToChange,
      pDo: pDo ?? this.pDo,
      howManyTrvs: howManyTrvs ?? this.howManyTrvs,
      howManyLockshields: howManyLockshields ?? this.howManyLockshields,
      existingRadiatorComments:
      existingRadiatorComments ?? this.existingRadiatorComments,
      mainFuse: mainFuse ?? this.mainFuse,
      boardType: boardType ?? this.boardType,
      numberOfSpare: numberOfSpare ?? this.numberOfSpare,
      typeofFuse: typeofFuse ?? this.typeofFuse,
      distanceToASHP: distanceToASHP ?? this.distanceToASHP,
      standardMaterials: standardMaterials ?? this.standardMaterials,
      electricalSystemComments:
      electricalSystemComments ?? this.electricalSystemComments,
      anyProperty: anyProperty ?? this.anyProperty,
      approximate: approximate ?? this.approximate,
      loftHatch: loftHatch ?? this.loftHatch,
      loftBoarded: loftBoarded ?? this.loftBoarded,
      loftHaveLight: loftHaveLight ?? this.loftHaveLight,
        createdDateTime:createdDateTime??this.createdDateTime,
      images: images??this.images,
    );
  }

  factory ASHPModel.fromJson(Map<String, dynamic> json) => _$ASHPModelFromJson(json);
  Map<String, dynamic> toJson() => _$ASHPModelToJson(this);
}
