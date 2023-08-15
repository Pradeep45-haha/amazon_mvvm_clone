import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLine;
  final Function(String?) onChanged;
  final String? Function(String?)? validator;
  const CustomTextField({
    super.key,
    required this.validator,
    required this.onChanged,
    required this.controller,
    required this.hintText,
    this.maxLine = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLine,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          ),
        ),
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
