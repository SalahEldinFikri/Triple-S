import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:tests/controller/setting/res.dart';
import 'package:tests/controller/setting/size.dart';
import 'package:tests/view/screens/login/sign_up.dart';
import 'package:tests/view/widgets/button.dart';
import 'package:tests/view/widgets/firebase_button.dart';

import '../../widgets/textField.dart';
import '../body/home.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool pass = true;
  String email = "";
  String password = "";
  Future<void> login(context) async {
    final credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    if (credential.user != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Page3()),
      );
    }
  }

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 251, 206, 1),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Image.asset(
                  Res.photo,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 400),
                  decoration: const BoxDecoration(),
                  child: Column(
                    children: [
                      90.w,
                      Form(
                        key: _key,
                        child: Column(
                          children: [
                            CustomTextField(
                                onTap: (value) => email = value,
                                text: 'Email',
                                icon: Icons.email,
                                message: '"email is not valid"'),
                            15.h,
                            SizedBox(
                              width: 370,
                              child: TextFormField(
                                onChanged: (value) {
                                  password = value;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "pass is not valid";
                                  }
                                  return null;
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
                                    )),
                              ),
                            ),
                            20.h,
                            CustomButton(
                              onTap: () async {
                                if (_key.currentState!.validate()) {
                                  isLoading = true;
                                  setState(() {});
                                  try {
                                    await login(context);
                                  } on FirebaseAuthException catch (e) {
                                    SnackBar snackBar = SnackBar(
                                      content: Text(e.message.toString()),
                                      backgroundColor: Colors.black,
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  }
                                  isLoading = false;
                                  setState(() {});
                                }
                              },
                              text: "Sign in",
                            ),
                            30.h,
                            Center(
                              child: AppButton(
                                text1: "Don't have account?",
                                text: "Sign up",
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Page2()),
                                  );
                                },
                              ),
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
        ),
      ),
    );
  }
}
