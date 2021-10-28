import 'package:flutter/material.dart';
import 'package:gym_app/screens/auth/register_screen.dart';
import 'package:gym_app/widgets/auth/auth_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.face),
                      labelText: 'Username',
                      contentPadding: EdgeInsets.only(left: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.lock),
                      labelText: 'password',
                      contentPadding: EdgeInsets.only(left: 15),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RegisterScreen.routeName);
                        },
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(color: Color(0xff00A2D2)),
                        ),
                        style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                      )
                    ],
                  ),
                  const AuthButton(
                    title: 'Login',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AuthButton(
                    title: 'Login with Facebook',
                    isSocial: true,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have account? '),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Register!',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
