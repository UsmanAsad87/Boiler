import 'package:boiler/colors/common.dart';
import 'package:boiler/view/BottomBar/BottomBar.dart';
import 'package:boiler/view/LoginScreen/loginScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool a = true;

//    class auths {
//   signupcontroller _controoler = new signupcontroller();
//   createUserWithEmailAndPassword() async {
//     try {
//       final credential =
//           await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: _controoler.emailcontroller.text,
//         password: _controoler.passcontroller.text,
//       );
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         print('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         print('The account already exists for that email.');
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
// }

class AuthServices {
  //static var auth = FirebaseAuth.instance.currentUser;
  //signupcontroller _controoler=new signupcontroller();

  ///****Create Account on firebase******/
  static createStuwithemailandpass(String email, String pass) async {
    print("mmmmmmmmmmmmmmmmmmmmm");

    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pass)
          .then((value) {
        value != null
            ? common.toastShow("Account Created Successfully")
            : Text("failed to create Account");
        // Get.to(LoginScreen());
      }).whenComplete(() {
        print(",,,,,,,,,,,,,,,,,,,,ioioioioioiiiiiiii");
        var uid = FirebaseAuth.instance.currentUser!.uid;
        FirebaseFirestore.instance.collection('users').doc(uid).set({
          'email': email,
          'uid': uid,
          'createdAt': DateTime.now(),
        }).whenComplete(() {
          Get.to(LoginScreen());
        });
      });
      //.whenComplete(() => common.toastShow("Account Created Successfully"));
      // .then((value)async{
      //   value.user!=null?common.toastShow("hjhjhj"):null;
      // });

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        common.toastShow('The password provided is too weak.');
        //Get.find<SignupController>().isLoad.value = false;
      } else if (e.code == 'email-already-in-use') {
        common.toastShow('The account already exists for that email.');
        //Get.find<SignupController>().isLoad.value = false;
      }
    } catch (e) {
      // common.toastShow('Some thing gonna wrong');
      //Get.find<SignupController>().isLoad.value = true;

    }
  }

  static Future<void> signInWithEmailandPass(
      String email, String password) async {
    try {
      // print('passed');
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        value != null
            ? common.toastShow("Account loged in Successfully")
            : common.toastShow("Wrong email and password");
        // Get.to(LoginScreen());
      });
      //  print('not Passed');
      final SharedPreferences sharedpref =
          await SharedPreferences.getInstance();
      sharedpref.setString('email', email);
      Get.to(BottomBar());
    } catch (ex) {
      common.toastShow("Wrong email and password");
      //  print('3');
      print(ex);
    }
  }
}
