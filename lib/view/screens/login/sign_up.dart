import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tests/controller/setting/res.dart';
import 'package:tests/controller/setting/size.dart';
import 'package:tests/view/screens/login/sign_in_screen.dart';
import 'package:tests/view/widgets/button.dart';
import 'package:tests/view/widgets/firebase_button.dart';
import 'package:tests/view/widgets/textField.dart';

import '../body/home.dart';

class Page2 extends StatefulWidget {
  const Page2({
    Key? key,
  }) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    bool pass = true;
    String email = "";
    String password = "";
    String password1 = "";
    Future<void> registerUser(context) async {
      final credential1 =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential1.user != null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Page3()),
        );
      }
    }

    final key = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 70),
              child: Image.asset(
                Res.photo,
                height: 300,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 250),
              decoration: const BoxDecoration(),
              child: Column(
                children: [
                  Form(
                    key: key,
                    child: Column(
                      children: [
                        CustomTextField(
                            onTap: (value) => {},
                            text: 'your name ',
                            icon: Icons.person,
                            message: '"Name   is empty "'),
                        CustomTextField(
                            onTap: (value) => email = value,
                            text: 'Email',
                            icon: Icons.email,
                            message: '"email is not valid"'),
                        20.h,
                        SizedBox(
                          width: 370,
                          child: TextFormField(
                            onChanged: (value) {
                              password = value;
                            },
                            obscureText: pass,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: "Password",
                              prefixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    pass = !pass;
                                  });
                                },
                                icon: const Icon(Icons.visibility),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "pass is not valid";
                              }
                              return null;
                            },
                          ),
                        ),
                        20.h,
                        SizedBox(
                          width: 370,
                          child: TextFormField(
                            onChanged: (value) {
                              password1 = value;
                            },
                            obscureText: pass,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: " Confirm Password",
                              prefixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    pass = !pass;
                                  });
                                },
                                icon: const Icon(Icons.visibility),
                              ),
                            ),
                            validator: (value) {
                              if (value != password || value!.isEmpty) {
                                return "pass isn't match";
                              }
                              return null;
                            },
                          ),
                        ),
                        10.h,
                        CustomTextField(
                            onTap: (value) => {},
                            text: 'Phone',
                            icon: Icons.phone,
                            message: '"phone  is empty "'),
                        20.h,
                        CustomButton(
                            onTap: () async {
                              if (key.currentState!.validate()) {
                                try {
                                  await registerUser(context);
                                } on FirebaseAuthException catch (e) {
                                  SnackBar snackBar = SnackBar(
                                    content: Text(e.message.toString()),
                                    backgroundColor: Colors.black,
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              }
                            },
                            text: "Sign Up "),
                        10.h,
                        Center(
                          child: AppButton(
                              text1: "Have account already?",
                              text: "Sign In",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Page1()),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  30.h,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
