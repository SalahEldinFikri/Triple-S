import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final String text;

  const CustomButton({super.key, required this.onTap, required this.text});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.fromLTRB(140, 15, 140, 15)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          )),
          backgroundColor: MaterialStateProperty.all(
            const Color.fromRGBO(255, 251, 206, .9),
          )),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
