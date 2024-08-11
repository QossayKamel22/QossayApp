import 'package:flutter/material.dart';
import 'package:qossay_s_application1/widgets/custom_textfiled.dart';
import '../widgets/custom_button.dart';


class ForgotPasswordDialog extends StatefulWidget {
  @override
  _ForgotPasswordDialogState createState() => _ForgotPasswordDialogState();
}

class _ForgotPasswordDialogState extends State<ForgotPasswordDialog> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Reset Password'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Please enter your email address to reset your password.',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            SizedBox(height: 20),
            CustomTextField(
              controller: _emailController,
              labelText: 'Email',
              prefixIcon: Icons.email_outlined,
            ),
            SizedBox(height: 20),
            CustomButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: 'Reset Password',
              color: Colors.orange,
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
