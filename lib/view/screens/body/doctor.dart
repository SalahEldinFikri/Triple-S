import 'package:flutter/material.dart';
import 'package:tests/controller/setting/strings.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../controller/setting/res.dart';
import '../../widgets/doctor.dart';

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);
  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  final List<DoctorClass> numbers = [
    DoctorClass(
      img: Res.doctor,
      width1: 300,
      text: " +20 103 2868621",
      icon: (Icons.phone),
      text1: "Dr.Abdulrahman saeed",
      onTap: () => launchUrl(Uri.parse(AppStrings.url6)),
    ),
    DoctorClass(
      img: Res.doctor2,
      width1: 300,
      text: "+966 54 470 6000 ",
      icon: (Icons.phone),
      text1: " Dr .Osama Elbadry ",
      onTap: () async => await launchUrl(
        Uri.parse(AppStrings.url7),
      ),
    ),
    DoctorClass(
      img: Res.doctor3,
      width1: 300,
      text: " +20 103 2121647",
      icon: (Icons.phone),
      text1: " Dr .Ahmed Ibrahim ",
      onTap: () => launchUrl(Uri.parse(AppStrings.url8)),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return numbers[index];
          }),
    ));
  }
}
