import 'package:flutter/material.dart';

class UserAuth extends ChangeNotifier{
  bool isSignedIn = false;

  changeStatus(){
    isSignedIn = isSignedIn;
    notifyListeners();

  }
}