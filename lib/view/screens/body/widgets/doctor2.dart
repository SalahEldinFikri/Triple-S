import 'package:flutter/material.dart';
import 'package:tests/controller/setting/size.dart';
import 'package:tests/view/widgets/doctor.dart';

class End extends StatefulWidget {
  final String text;
  final String text1;
  final String img;
  final String price;
  final IconData icon;
  final double? width1;
  const End({
    Key? key,
    required this.text,
    required this.text1,
    required this.img,
    this.width1,
    required this.price,
    required this.icon,
  }) : super(key: key);

  @override
  State<End> createState() => _EndState();
}

class _EndState extends State<End> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, right: 8.0, top: 18.0, bottom: 8),
            child: DoctorClass2(
              text: widget.text,
              icon: widget.icon,
              text1: widget.text1,
              img: widget.img,
              width1: widget.width1,
            ),
          ),
          const Text(
            "Healthiness : Normal ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          10.h,
          Text(
            "Total price :${widget.price}",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          10.h,
          const Text(
            " Thank you for visit 🌹 ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            margin: const EdgeInsets.only(top: 400, left: 120),
            child: Row(
              children: const [
                Text(
                  "  questions or Inquiries  ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "1557",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
