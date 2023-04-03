// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tests/controller/setting/res.dart';
import 'package:tests/controller/setting/size.dart';
import 'package:tests/controller/setting/strings.dart';
import 'package:tests/view/widgets/component.dart';
import 'package:url_launcher/url_launcher.dart';

class SportHome extends StatelessWidget {
  const SportHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 251, 206, 1),
        title: Text(
          "At  Home",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black, size: 30),
          onPressed: () {
            Navigator.pop;
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GymClass(
                img: Res.p2,
                text: " Jump lunges X 30",
                onTap: () => launchUrl(Uri.parse(AppStrings.url4))),
            10.h,
            GymClass(
              img: Res.p,
              text: "Plank Jacks X 20",
              onTap: () => launchUrl(Uri.parse(AppStrings.url5)),
            ),
            10.h,
            GymClass(
              img: Res.A,
              text: "Lose Weight At Home",
              onTap: () => launchUrl(Uri.parse(AppStrings.url3)),
            ),
          ],
        ),
      ),
    );
  }
}
