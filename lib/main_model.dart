import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String wakanText ='Wakan';

  void changeWakanText(){
    wakanText ='松寿仙美味しいdes';
    notifyListeners(); //変更を通知する
  }
}