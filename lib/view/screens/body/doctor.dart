import 'package:flutter/material.dart';
import 'package:tests/controller/setting/strings.dart';
import 'package:tests/view/screens/body/widgets/doctor2.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../controller/setting/res.dart';
import '../../widgets/doctor.dart';

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);
  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> numbers = [
      DoctorClass(
        img: Res.doctor,
        width1: 300,
        text: " +20 103 2868621",
        icon: (Icons.phone),
        text1: "Dr.Abdulrahman saeed",
        onTap: () => launchUrl(Uri.parse(AppStrings.url6)),
        onTap1: () {
          {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const End(
                    text: '+20 103 2868621',
                    text1: 'Dr.Abdulrahman saeed',
                    width1: 300,
                    icon: (Icons.phone),
                    img: Res.doctor,
                    price: "180\$",
                  ),
                ));
          }
        },
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
        onTap1: () {
          {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const End(
                          text: '+966 54 470 6000 ',
                          text1: 'Dr .Osama Elbadry  ',
                          icon: (Icons.phone),
                          img: Res.doctor2,
                          width1: 300,
                          price: "200\$",
                        )));
          }
        },
      ),
      DoctorClass(
        img: Res.doctor3,
        width1: 300,
        text: " +20 103 2121647",
        icon: (Icons.phone),
        text1: " Dr .Ahmed Ibrahim ",
        onTap: () => launchUrl(Uri.parse(AppStrings.url8)),
        onTap1: () {
          {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const End(
                    text: '+20 103 2121647 ',
                    text1: 'Dr .Ahmed Ibrahim  ',
                    icon: (Icons.phone),
                    img: Res.doctor3,
                    width1: 300,
                    price: "250\$",
                  ),
                ));
          }
        },
      ),
    ];
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
