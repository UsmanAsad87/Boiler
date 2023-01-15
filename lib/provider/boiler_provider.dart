import 'package:boiler/model/ASHPModel.dart';
import 'package:boiler/model/boilerModel.dart';
import 'package:flutter/cupertino.dart';

class BoilerProvider extends ChangeNotifier {
  BoilerModel? _boilerModel;

  BoilerModel get getBoilerObject => _boilerModel!;

  void setBoilerObject(BoilerModel obj) {
    _boilerModel = obj;
    notifyListeners();
  }

}
