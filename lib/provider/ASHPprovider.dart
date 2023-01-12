import 'package:boiler/model/ASHPModel.dart';
import 'package:flutter/cupertino.dart';

class ASHPProvider extends ChangeNotifier {
  ASHPModel? _ashpModel;

  ASHPModel get getASHPObject => _ashpModel!;

  void setASHPObject(ASHPModel obj) {
    _ashpModel = obj;
    notifyListeners();
  }

}
