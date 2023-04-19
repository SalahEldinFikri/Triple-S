import 'package:flutter/material.dart';
import 'package:tests/controller/setting/size.dart';

class CustomContainer2 extends StatefulWidget {
  final String text;

  final IconData icon;

  const CustomContainer2({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  State<CustomContainer2> createState() => _CustomContainer2State();
}

class _CustomContainer2State extends State<CustomContainer2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          color: const Color.fromRGBO(255, 251, 206, 1),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          20.h,
          Icon(
            widget.icon,
            size: 80,
            color: Colors.black,
          ),
          Text(
            widget.text,
            style: const TextStyle(fontSize: 35, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
