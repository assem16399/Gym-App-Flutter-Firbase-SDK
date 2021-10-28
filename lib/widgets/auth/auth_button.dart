import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String title;
  final bool isSocial;
  const AuthButton({
    required this.title,
    this.isSocial = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return isSocial
        ? ElevatedButton.icon(
            icon: const Icon(
              Icons.facebook,
              size: 35,
            ),
            onPressed: () {},
            label: Text(
              title,
              style: const TextStyle(fontSize: 25, fontFamily: 'Ruda', fontWeight: FontWeight.bold),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              minimumSize: MaterialStateProperty.all(
                Size(deviceSize.width * 1, deviceSize.height * 0.06),
              ),
            ),
          )
        : ElevatedButton(
            onPressed: () {},
            child: Text(
              title,
              style: const TextStyle(fontSize: 25),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              minimumSize: MaterialStateProperty.all(
                Size(deviceSize.width * 1, deviceSize.height * 0.06),
              ),
            ),
          );
  }
}
