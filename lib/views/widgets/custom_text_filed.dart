import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final String? hintText;
  final Function(String)? onChanged;
  const CustomTextFiled({super.key, this.hintText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
