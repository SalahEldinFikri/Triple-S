import 'package:flutter/material.dart';
import 'package:tests/controller/setting/size.dart';

class AgeBox extends StatefulWidget {
  const AgeBox(
      {required this.txt,
      required this.txt1,
      required this.onTab,
      required this.onTab1,
      Key? key})
      : super(key: key);
  final String txt, txt1;
  final void Function() onTab, onTab1;

  @override
  State<AgeBox> createState() => _AgeBoxState();
}

class _AgeBoxState extends State<AgeBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: 150,
      height: 160,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          color: const Color.fromRGBO(255, 251, 206, 1),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          10.h,
          Text(
            widget.txt,
            style: const TextStyle(fontSize: 35, color: Colors.black),
          ),
          10.h,
          Text(
            widget.txt1,
            style: const TextStyle(fontSize: 35, color: Colors.black),
          ),
          Row(
            children: [
              20.w,
              IconButton(
                  onPressed: () {
                    widget.onTab();
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 35,
                  )),
              IconButton(
                  onPressed: () {
                    widget.onTab1();
                  },
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.black,
                    size: 35,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
