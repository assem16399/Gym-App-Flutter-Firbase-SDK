import 'package:flutter/material.dart';

class DropDownTextField extends StatefulWidget {
  const DropDownTextField({Key? key}) : super(key: key);

  @override
  State<DropDownTextField> createState() => _DropDownTextFieldState();
}

class _DropDownTextFieldState extends State<DropDownTextField> {
  final _categories = [
    "Egypt",
    "KSA",
    "UAE",
    "USA",
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
