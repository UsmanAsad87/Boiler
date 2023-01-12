
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class common{
static void toastShow(String msg) {

    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb:1,
        
        // Duration: Duration(seconds: 2),
        backgroundColor: Color.fromARGB(255, 33, 41, 161),
        textColor: Color.fromARGB(255, 242, 247, 246),
        fontSize: 16.0);
  }
  }