import 'package:flutter/material.dart';
import 'package:tests/controller/setting/size.dart';

class CardImage extends StatelessWidget {
  final String img;
  final double? width1;

  const CardImage({super.key, required this.img, this.width1});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          img,
          width: width1 ?? 300,
        ),
      ),
    );
  }
}

class GymClass extends StatelessWidget {
  final String text;
  final Function onTap;
  final String img;
  final double? width1;

  const GymClass(
      {super.key,
      required this.text,
      required this.onTap,
      required this.img,
      this.width1});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        width: 350,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(color: Colors.brown, width: .5)),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: Text(
                      text,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                10.h,
                InkWell(
                  onTap: () => onTap(),
                  child: const Text(
                    " Go to see how",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                ),
                10.h,
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    img,
                    width: width1 ?? 300,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
