import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_nop/screen/login/auth_controller.dart';

class Welcome_Page extends StatefulWidget {
  const Welcome_Page({Key? key}) : super(key: key);

  @override
  State<Welcome_Page> createState() => _Welcome_PageState();
}

class _Welcome_PageState extends State<Welcome_Page> {
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
