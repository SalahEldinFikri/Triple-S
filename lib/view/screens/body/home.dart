import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tests/controller/setting/size.dart';
import 'package:tests/view/screens/body/widgets/age_box.dart';
import 'package:tests/view/screens/body/widgets/gender.dart';

import 'calculate.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  double result = 0.0;
  double value = 100;
  Color color = Colors.purple.shade300;
  int age = 30;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(255, 251, 206, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                30.w,
                const CustomContainer2(text: "Male", icon: Icons.male),
                30.w,
                const CustomContainer2(text: "Female", icon: Icons.female),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 328,
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  color: const Color.fromRGBO(255, 251, 206, 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  20.h,
                  const Text(
                    "Height",
                    style: TextStyle(fontSize: 35, color: Colors.black),
                  ),
                  Text(
                    "${value.round()}",
                    style: const TextStyle(fontSize: 35, color: Colors.black),
                  ),
                  Slider(
                    activeColor: Colors.black,
                    value: value,
                    onChanged: (double val) => setState(() => value = val),
                    max: 200,
                  )
                ],
              ),
            ),
            Row(
              children: [
                36.w,
                AgeBox(
                  txt: "Age",
                  txt1: "$age",
                  onTab: () {
                    setState(() {
                      age++;
                    });
                  },
                  onTab1: () {
                    setState(() {
                      age--;
                    });
                  },
                ),
                30.w,
                AgeBox(
                  txt: "Weight",
                  txt1: "$weight",
                  onTab: () {
                    setState(() {
                      weight++;
                    });
                  },
                  onTab1: () {
                    setState(() {
                      weight--;
                    });
                  },
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.fromLTRB(0, 10, 0, 10)),
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(255, 251, 206, 1),
                    )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Calculate(
                              result: weight / pow(value / 100, 2),
                              age: age,
                              height: value,
                              weight: weight,
                            )),
                  );
                },
                child: const Text(
                  "Calculate",
                  style: TextStyle(fontSize: 35, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
