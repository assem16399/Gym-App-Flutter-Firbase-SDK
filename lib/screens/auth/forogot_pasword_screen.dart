import 'package:flutter/material.dart';
import 'package:gym_app/widgets/auth/auth_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static const routeName = '/forgot-password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: const [
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.email),
                  labelText: 'Enter your Email',
                  contentPadding: EdgeInsets.only(left: 15),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              AuthButton(title: 'Reset Password')
            ],
          ),
        )),
      ),
    );
  }
}
