import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function(String) onTap;
  final String text;
  final IconData icon;
  final String message;
  const CustomTextField(
      {super.key,
      required this.onTap,
      required this.text,
      required this.icon,
      required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: 370,
      child: TextFormField(
          onChanged: onTap,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: text,
            prefixIcon: Icon(icon),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return message;
            }
            return null;
          }),
    );
  }
}
