import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.controller, required this.hintText}) : super(key: key);

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38
          )
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.black38
            )
        ),
      ),
      validator: (valid) {
        return null;
      },
    );
  }
}
