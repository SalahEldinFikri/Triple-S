import 'package:flutter/material.dart';
import 'package:tests/controller/setting/size.dart';

class Custom extends StatelessWidget {
  final Color color;
  final String text;
  final String text1;
  final String text2;
  final String? text3;
  final String? text4;
  final String? text5;
  final String? text6;
  final String? text7;

  const Custom({
    super.key,
    required this.color,
    required this.text,
    required this.text1,
    required this.text2,
    this.text3,
    this.text4,
    this.text5,
    this.text6,
    this.text7,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20),
      width: 190,
      height: 230,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(100),
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
      child: SingleChildScrollView(
        child: Column(
          children: [
            30.h,
            Text(
              text,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            10.h,
            Text(
              text1,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              text2,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              text3 ?? "",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              text4 ?? "",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              text5 ?? "",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              text6 ?? "",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              text7 ?? "",
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
