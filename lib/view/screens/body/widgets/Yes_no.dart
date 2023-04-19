// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tests/controller/setting/size.dart';

class YesOrNO extends StatefulWidget {
  final String text;
  final Function() onTap;
  const YesOrNO({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  State<YesOrNO> createState() => _YesOrNOState();
}

class _YesOrNOState extends State<YesOrNO> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        30.w,
        Text(
          widget.text,
          style: const TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        80.w,
        Column(
          children: [
            ElevatedButton(
              style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(10),
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(255, 251, 206, 1))),
              onPressed: widget.onTap,
              child: const Text(
                " Yes",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            3.h,
            ElevatedButton(
              style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(10),
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(255, 251, 206, 1))),
              onPressed: () {},
              child: const Text(
                " No",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
