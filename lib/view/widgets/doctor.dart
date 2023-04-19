import 'package:flutter/material.dart';
import 'package:tests/controller/setting/size.dart';

class DoctorClass extends StatelessWidget {
  final String text;
  final String text1;
  final IconData icon;
  final String img;
  final double? width1;
  final Function onTap;
  final Function() onTap1;

  const DoctorClass({
    super.key,
    required this.text,
    required this.icon,
    required this.text1,
    required this.img,
    this.width1,
    required this.onTap,
    required this.onTap1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
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
                  onPressed: onTap1,
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
                        left: 160,
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
          )),
    );
  }
}

class DoctorClass2 extends StatelessWidget {
  final String text;
  final String text1;
  final IconData icon;
  final String img;
  final double? width1;

  const DoctorClass2({
    super.key,
    required this.text,
    required this.icon,
    required this.text1,
    required this.img,
    this.width1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: const EdgeInsets.only(left: 60, top: 10),
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
              ),
            ],
          )),
    );
  }
}
