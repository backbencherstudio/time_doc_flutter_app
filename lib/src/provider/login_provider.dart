import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier{
  bool _isRememberMe = false;
  bool _isFilledForm = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  get getIsRememberMe => _isRememberMe;
  get getIsFilledForm => _isFilledForm;

  bool setIsRememberMe() {
    _isRememberMe = !_isRememberMe;
    notifyListeners();
    return _isRememberMe;
  }
  void isFilledFrom(){
    if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
      _isFilledForm = true;
    }
    notifyListeners();
  }
}