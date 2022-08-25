import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_nop/screen/Quiz/quiz.dart';
import 'package:flutter_nop/screen/Quiz/quizcreate.dart';
import 'package:flutter_nop/screen/home.dart';
import 'package:flutter_nop/screen/login/auth_controller.dart';
import 'package:get/get.dart';

class Home_screen extends StatelessWidget {
  String email;
  String? user;
  Home_screen({Key? key, required this.email, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 70, 0, 00),
                    child: Text(
                      "Welcome",
                      style:
                          TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Visibility(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        (user == null) ? email : user!,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 160,
                  ),
                  Container(
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
                              Get.to(() => Home_Page());
                            },
                            color: Color.fromARGB(255, 149, 243, 218),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Text(
                              "Home Screen",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
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
                              Get.to(() => Quiz_CreatePage());
                            },
                            color: Color.fromARGB(255, 149, 243, 218),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Text(
                              "Quiz Create",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
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
                              Get.to(() => Quiz_Page());
                            },
                            color: Color.fromARGB(255, 149, 243, 218),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Text(
                              "Quiz Screen",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
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
                              AuthController.instance.Logout();
                            },
                            color: Color.fromARGB(255, 149, 243, 218),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Text(
                              "Log Out",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        )
                      ],
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
