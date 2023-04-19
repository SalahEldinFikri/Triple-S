import 'package:flutter/material.dart';
import 'package:tests/controller/setting/size.dart';
import 'package:tests/view/screens/sport/homeSport.dart';
import 'package:tests/view/widgets/component.dart';

import '../../../controller/setting/res.dart';
import 'gym.dart';

class Sports1 extends StatelessWidget {
  const Sports1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CardImage(
            img: Res.p,
            width1: 250,
          ),
          20.h,
          text1(
            "In Home",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SportHome()));
            },
          ),
          20.h,
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              "assets/j.webp",
              height: 150,
              width: 250,
            ),
          ),
          20.h,
          text1("In Gym", () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Sports()));
          }),
        ],
      ),
    );
  }

  Widget text1(String text, final Function onTap) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
