// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_nop/screen/login/auth_controller.dart';
import 'package:flutter_nop/screen/login/singup_page.dart';
import 'package:get/get.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    List images = [
      "g.png",
      "t.png",
      "f.png",
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/fish.jpg"), fit: BoxFit.cover),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            new Center(
              child: new ListView(
                padding: EdgeInsets.fromLTRB(10, 70, 10, 10),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 70, 0, 10),
                    child: Text(
                      "NOP APP",
                      style:
                          TextStyle(fontSize: 65, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Color.fromARGB(255, 176, 234, 216)
                              .withOpacity(0.4),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: emailcontroller,
                      obscureText: false,
                      decoration: InputDecoration(
                        // hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        // hintText: "Email or Username",
                        labelText: "Email or Username",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Color.fromARGB(255, 176, 234, 216)
                              .withOpacity(0.4),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: passwordcontroller,
                      // autofocus: true,
                      obscureText: true,
                      decoration: InputDecoration(
                        // hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        // hintText: "Password",
                        labelText: "Password",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 145,
                  ),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 190,
                          height: 50,
                          child: RaisedButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 30),
                            onPressed: () async {
                              print("Test SingIn");
                              if (emailcontroller.text.isEmpty) {
                              } else {
                                AuthController.instance.Login(
                                  emailcontroller.text.trim(),
                                  passwordcontroller.text.trim(),
                                );
                                setState(() => isloading = true);
                                await Future.delayed(Duration(seconds: 5));
                                setState(() => isloading = false);
                              }
                            },
                            color: Color.fromARGB(255, 149, 243, 218),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: isloading
                                ? Row(
                                    children: [
                                      CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                          child: Text(
                                        'Please Wait...',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ))
                                    ],
                                  )
                                : Text(
                                    "Sing In",
                                    style: TextStyle(fontSize: 17),
                                  ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 155,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          text: "Don't have an account?",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: " Create",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.to(
                                      () => SignUp_page(),
                                    ),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
