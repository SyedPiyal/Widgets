import 'package:flutter/cupertino.dart';

class TextFiledControllerProvider extends ChangeNotifier {
  final String _result = "Result";

  String get txtResult => _result;

  void setTxtResult(String text){
    text = _result;
    notifyListeners();
  }
}