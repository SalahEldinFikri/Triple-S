import 'package:flutter/material.dart';
import 'package:tests/controller/setting/size.dart';

class DoctorClass extends StatelessWidget {
  final String text;
  final String text1;
  final IconData icon;
  final String img;
  final double? width1;
  final Function onTap;

  const DoctorClass({
    super.key,
    required this.text,
    required this.icon,
    required this.text1,
    required this.img,
    this.width1,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(color: Colors.brown, width: .5)),
        elevation: 10,
        child: Column(
          children: [
            10.h,
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                img,
                width: width1,
              ),
            ),
            Text(
              text1,
              style: const TextStyle(fontSize: 28, color: Colors.black),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(left: 90, top: 10),
                child: Row(
                  children: [
                    Icon(icon),
                    Text(
                      text,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, top: 10),
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.only(
                        left: 40, right: 40, top: 8, bottom: 8)),
                    elevation: MaterialStatePropertyAll(5),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(255, 251, 206, 1))),
                child: const Text(
                  "Book Now ",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 170,
                    ),
                    child: InkWell(
                      onTap: () => onTap(),
                      child: const Icon(
                        Icons.facebook,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                  ),
                  10.w,
                  const Icon(
                    Icons.language,
                    color: Colors.blue,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
