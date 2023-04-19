import 'package:flutter/material.dart';
import 'package:tests/controller/setting/res.dart';
import 'package:tests/controller/setting/size.dart';
import 'package:tests/controller/setting/strings.dart';
import 'package:tests/view/widgets/component.dart';
import 'package:url_launcher/url_launcher.dart';

class Sports extends StatelessWidget {
  const Sports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 251, 206, 1),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black, size: 30),
          onPressed: () {
            Navigator.pop;
          },
        ),
        title: Text(
          "In Gym",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            5.h,
            GymClass(
              img: Res.p2,
              text: "Squad in Gym",
              onTap: () => launchUrl(Uri.parse(AppStrings.url)),
            ),
            10.h,
            GymClass(
              img: Res.k,
              text: " Body Strength Training ",
              onTap: () => launchUrl(Uri.parse(AppStrings.url1)),
            ),
            10.h,
            GymClass(
              img: Res.A,
              text: " Lose Belly Fat  ",
              onTap: () => launchUrl(Uri.parse(AppStrings.url2)),
            ),
          ],
        ),
      ),
    );
  }
}
