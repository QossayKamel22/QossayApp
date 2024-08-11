import 'package:flutter/material.dart';
import 'package:qossay_s_application1/screens/dashboard_screen.dart';
import 'package:qossay_s_application1/screens/register_screen.dart';
import 'package:qossay_s_application1/widgets/forgetpassword_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoginController {

final TextEditingController usernameController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

final String dummyUsername = 'user';
final String dummyPassword = '123456';


Future<void> login(BuildContext context) async {
  final username = usernameController.text;
  final password = passwordController.text;

  if (username == dummyUsername && password == dummyPassword) {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => DashboardScreen()),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Welcome to Pcnc E-commerce app',
          style: TextStyle(color: Colors.orange),
        ),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.fromLTRB(20, 60, 20, 20),
      ),
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Invalid username or password',
          style: TextStyle(color: Colors.redAccent),
        ),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.fromLTRB(20, 60, 20, 20),
      ),
    );
  }
}

Future<void> checkLoginStatus(BuildContext context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  if (isLoggedIn) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => DashboardScreen()),
    );
  }
}



void navigateToRegister(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => RegisterScreen()),
  );
}

void showForgotPasswordDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ForgotPasswordDialog();
    },
  );
}

}