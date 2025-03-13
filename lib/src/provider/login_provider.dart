import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier{
  bool _isRememberMe= false;

  get getIsRememberMe => _isRememberMe;
  bool setIsRememberMe() {
    _isRememberMe = !_isRememberMe;
    notifyListeners();
    return _isRememberMe;
  }
}