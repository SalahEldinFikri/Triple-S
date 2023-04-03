import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tests/view/screens/login/sign_up.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(255, 251, 206, 1),
        textTheme: textTheme,
      ),
      debugShowCheckedModeBanner: false,
      home: const Page2(),
    );
  }

  TextTheme get textTheme {
    return const TextTheme(
      displayLarge: TextStyle(
        fontSize: 23,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontSize: 21,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
    );
  }
}
