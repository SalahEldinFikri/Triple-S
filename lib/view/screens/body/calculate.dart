import 'package:flutter/material.dart';
import 'package:tests/controller/setting/size.dart';
import 'package:tests/view/screens/body/doctor.dart';
import 'package:tests/view/screens/body/widgets/Yes_no.dart';
import 'package:tests/view/screens/health/thin.dart';

import '../../../controller/setting/res.dart';
import '../sport/sports.dart';

class Calculate extends StatefulWidget {
  String get resultPhrase {
    String resultText = '';
    if (result >= 30) {
      resultText = 'Obese';
    } else if (result > 25 && result < 30) {
      resultText = 'Over Weight';
    } else if (result >= 18.5 && result <= 24.9) {
      resultText = 'Normal ';
    } else {
      resultText = 'Thin ';
    }
    return resultText;
  }

  final int age;
  final double result;
  final double height;
  final int weight;
  const Calculate(
      {Key? key,
      required this.age,
      required this.height,
      required this.weight,
      required this.result})
      : super(key: key);

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(children: [
            Image.asset(Res.download1),
            container("Age", "          ${widget.age}              )"),
            20.h,
            container("Height",
                "          ${widget.height.toStringAsFixed(2)}              )"),
            20.h,
            container("Weight", "          ${widget.weight}              )"),
            20.h,
            container("Result",
                "          ${widget.result.toStringAsFixed(2)}              )"),
            20.h,
            Container(
              margin: const EdgeInsets.only(right: 200),
              child: const Text(
                "Healthiness",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            5.h,
            InkWell(
              child: Container(
                width: 330,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2)),
                child: Center(
                  child: Text(
                    "${widget.resultPhrase} ",
                    style: const TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Normal()),
              ),
            ),
            15.h,
            YesOrNO(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Sports1()),
                  );
                },
                text: " Do you want \n    do sport ? "),
            20.h,
            YesOrNO(
                text: " Do you need \n      doctor ?",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Doctor()),
                  );
                }),
            20.h,
          ]),
        ),
      ),
    );
  }

  Widget container(String text, String text1) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        30.w,
        Container(
          width: 120,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 2)),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
        ),
        30.w,
        Text(
          text1,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 30,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness: .5,
            decorationColor: Colors.black,
          ),
        ),
      ]),
    );
  }
}
