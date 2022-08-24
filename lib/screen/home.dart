// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_nop/screen/login/auth_controller.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => Home_PageState();
}

class Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
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
                padding: EdgeInsets.fromLTRB(10, 70, 10, 10),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 70, 0, 10),
                    child: Text(
                      "Home",
                      style:
                          TextStyle(fontSize: 65, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 155,
                  ),
                  // Container(
                  //   child: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       SizedBox(R
                  //         width: 190,
                  //         height: 50,
                  //         child: RaisedButton(
                  //           padding: EdgeInsets.symmetric(
                  //               vertical: 8, horizontal: 30),
                  //           onPressed: () {
                  //             // AuthController.instance.Logout();
                  //           },
                  //           color: Color.fromARGB(255, 149, 243, 218),
                  //           shape: RoundedRectangleBorder(
                  //               borderRadius:
                  //                   BorderRadius.all(Radius.circular(30))),
                  //           child: Text(
                  //             "Test",
                  //             style: TextStyle(fontSize: 17),
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
