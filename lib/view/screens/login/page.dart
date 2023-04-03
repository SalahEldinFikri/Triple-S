import 'package:flutter/material.dart';
import 'package:tests/controller/setting/res.dart';
import 'package:tests/view/screens/login/signin_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const Page1(),
          ),
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 100),
              child: Image.asset(Res.photo1)),
          Container(
            margin: const EdgeInsets.only(top: 500, left: 80),
            child: Row(
              children: const [
                Text(
                  "Welcome to Triple S",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                Icon(
                  Icons.favorite,
                  size: 28,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
