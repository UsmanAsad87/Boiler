import 'dart:io';
import 'dart:typed_data';
import 'package:boiler/model/ASHPModel.dart';
import 'package:boiler/model/boilerModel.dart';
import 'package:boiler/provider/ASHPprovider.dart';
import 'package:boiler/provider/boiler_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';


class BoilerMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;


  Future<List<String>> uploadImages(List<XFile> images) async {
    List<String> imgDownloadUrls=[];
    for(int i=0;i<images.length;i++){
      String imgUrl=await uploadImage(images[i]);
      imgDownloadUrls.add(imgUrl);
    }
    return imgDownloadUrls;
  }
  Future<String> uploadImage(XFile images) async {
      var imageId = const Uuid().v4();
      final path = 'Boiler/${_auth.currentUser!.uid}/$imageId';
      final ref = _storage.ref().child(path);
      Uint8List imgInBytes=await images.readAsBytes();
      UploadTask uploadTask = ref.putData(imgInBytes);
      TaskSnapshot snap = await uploadTask.whenComplete(() {});
      String downloadUrl = await snap.ref.getDownloadURL();
      print(downloadUrl);
      return downloadUrl;

  }

  Future<String> createBoilerSurvey({
    required BuildContext context,
  }) async {
    String res = "Some error occurred";
    var boilerId = '';
    try {

      boilerId = const Uuid().v4();
      DocumentSnapshot snap =
      await _firestore.collection('userInfo').doc(_auth.currentUser!.uid).get();
      Map<String, dynamic> user=snap.data() as Map<String, dynamic>;
      print(user['userName']);


      BoilerModel model = Provider.of<BoilerProvider>(context,listen: false).getBoilerObject;
      model = model.copyWith(
        boilerId: boilerId,
        createdDateTime: DateTime.now(),
        uid: _auth.currentUser!.uid,
        username:user['userName']
      );

      await _firestore
          .collection('Boiler_Survey')
          .doc(boilerId)
          .set(model.toJson());
      res = 'Boiler survey submitted!';
      BoilerModel emptyModel=BoilerModel();
      Provider.of<BoilerProvider>(context,listen: false).setBoilerObject(emptyModel);
    } catch (e) {
      res = e.toString();
    }

    return res;
  }


}
