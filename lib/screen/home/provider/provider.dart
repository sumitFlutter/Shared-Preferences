import 'package:flutter/cupertino.dart';
import 'package:log_in/utils/shared_helper.dart';

class LogInProvider with ChangeNotifier
{
  String name="",email="";
  void store({required String txt1,required String txt2})
  {
    name=txt1;
    email=txt2;
    saveN(nameP: name);
    saveE(emailP: email);
  }
}