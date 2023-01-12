
// import 'dart:html';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// class services{
  
//   Future uploadimg(File _image) async {
//     // setState(() {print("0");
//     // });
//     String url;
//     String imgid = DateTime.now().microsecondsSinceEpoch.toString();
//     Reference reference = await FirebaseStorage.instance
//         .ref()
//         .child('images')
//         .child('profile$imgid');
//     await reference.putFile(_image);
//     url = await reference.getDownloadURL();
//     postdata(data!['name'], url);
//     // setState(() {
//     //   isLoad == false;
//     // });
//     return url;
//   }

// }