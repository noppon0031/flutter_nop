import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_nop/screen/login/auth_controller.dart';

class SignUp_page extends StatefulWidget {
  const SignUp_page({Key? key}) : super(key: key);

  @override
  State<SignUp_page> createState() => _SignUp_pageState();
}

class _SignUp_pageState extends State<SignUp_page> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    List images = [
      "g.png",
      "t.png",
      "f.png",
    ];

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
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
                  // Container(
                  //   padding: EdgeInsets.fromLTRB(0, 70, 0, 10),
                  //   child: Text(
                  //     "NOP APP",
                  //     style:
                  //         TextStyle(fontSize: 65, fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: h * 0.10,
                        ),
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage("img/profile.jpg"),
                        )
                      ],
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
                        hintText: "Email or Username",
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
                      obscureText: true,
                      decoration: InputDecoration(
                        // hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        hintText: "Password",
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

                  GestureDetector(
                    onTap: () {
                      // AuthController.instance.register(
                      //     emailcontroller.text.trim(),
                      //     passwordcontroller.text.trim());
                    },
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 190,
                            height: 50,
                            child: RaisedButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 30),
                              onPressed: () {
                                // FirebaseAuth.instance
                                //     .createUserWithEmailAndPassword(
                                //         email: emailcontroller.text,
                                //         password: passwordcontroller.text)
                                //     .then(
                                //   (value) {
                                //     Navigator.push(
                                //         context,
                                //         MaterialPageRoute(
                                //             builder: (context) =>
                                //                 Welcome_Page()));
                                //   },
                                // );
                                AuthController.instance.register(
                                    emailcontroller.text.trim(),
                                    passwordcontroller.text.trim());
                              },
                              color: Color.fromARGB(255, 149, 243, 218),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Text(
                                "Sing Up",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Center(
                    child: Wrap(
                      children: List<Widget>.generate(3, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: CircleAvatar(
                            radius: 22,
                            backgroundImage: AssetImage("img/" + images[index]),
                          ),
                        );
                      }),
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
