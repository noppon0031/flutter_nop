// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_nop/data/EmployeeMenu.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => Home_PageState();
}

class Home_PageState extends State<Home_Page> {
  var datenow;
  late String difference = "00:00";
  String dateFormat = 'EEEE, d MMMM';
  bool btncheckin = true;

  @override
  void initState() {
    super.initState();
    datenow = DateTime.now();
    const oneSecond = const Duration(seconds: 1);
    new Timer.periodic(oneSecond, (Timer t) => setState(() {}));
  }

  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          "Home Screen",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 238, 139, 172),
        // toolbarHeight: 70,
      ),
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/black.jpg"), fit: BoxFit.cover),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            new Center(
              child: new ListView(
                padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                children: <Widget>[
                  // Container(
                  //   padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
                  //   child: Text(
                  //     "Home Screen",
                  //     style:
                  //         TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                  SizedBox(
                    height: 85,
                  ),
                  CircularPercentIndicator(
                    radius: 120.0,
                    lineWidth: 23.0,
                    percent: 1.0,
                    center: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        difference,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    // progressColor: Color.fromRGBO(55, 180, 170, 1),
                    progressColor: Color.fromARGB(255, 238, 139, 172),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(DateFormat(dateFormat).format(DateTime.now())),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "${DateFormat('H').format(DateTime.now())}:${DateFormat('mm').format(DateTime.now())}:${DateFormat('ss').format(DateTime.now())}"),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Location"),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(100, 0, 100, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          btncheckin
                              // ? Color.fromRGBO(30, 126, 118, 1)
                              ? Color.fromARGB(255, 246, 137, 195)
                              : Colors.red,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () {
                        DateTime? datenow = DateTime.now();
                        print(datenow);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 14, 0, 14),
                        child: Text(
                          "checkin",
                          style: TextStyle(fontSize: 20),
                        ),
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
