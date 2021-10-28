import 'package:flutter/material.dart';
import 'package:gym_app/widgets/auth/drop_down_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const routeName = '/register';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
              child: Column(
            children: [
              TextFormField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 130,
                      child: DropdownButtonFormField(items: [DropdownMenuItem(child: Text(''))])),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(child: TextFormField())
                ],
              ),
              TextFormField()
            ],
          )),
        ),
      ),
    );
  }
}
