import 'package:shared_preferences/shared_preferences.dart';

void saveN({required String nameP}) async {
  SharedPreferences s1 = await SharedPreferences.getInstance();
  s1.setString("name", nameP);
}

Future<String?> showN() async {
  SharedPreferences s1 = await SharedPreferences.getInstance();
  s1.getString("name");
  return s1.getString("name");
}

void saveE({required String emailP}) async {
  SharedPreferences s1 = await SharedPreferences.getInstance();
  s1.setString("email", emailP);
}

Future<String?> showE() async {
  SharedPreferences s1 = await SharedPreferences.getInstance();
  s1.getString("email");
  return s1.getString("email");
}
