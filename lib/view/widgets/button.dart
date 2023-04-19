import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final String text1;
  final Function() onTap;
  const AppButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.text1});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        TextButton(
          onPressed: onTap,
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.fromLTRB(16, 15, 16, 15)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
              backgroundColor: MaterialStateProperty.all(
                const Color.fromRGBO(255, 251, 206, 1),
              )),
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
