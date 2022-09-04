// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_nop/screen/login/auth_controller.dart';
import 'package:flutter_nop/screen/quiz/quizcreateme.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Quiz_OptionPage extends StatefulWidget {
  var numquiz;
  Quiz_OptionPage(this.numquiz, {Key? key}) : super(key: key);

  @override
  State<Quiz_OptionPage> createState() => Quiz_OptionPageState();
}

class Quiz_OptionPageState extends State<Quiz_OptionPage> {
  TextEditingController createquizcontroller = TextEditingController();

  var selectedRadio;
  var selectedRadio2;
  var selectedRadio3;
  @override
  void initState() {
    super.initState();

    selectedRadio = 0;
    selectedRadio2 = 0;
    selectedRadio3 = 0;
  }

  Widget build(BuildContext context) {
    setSelectedRadio(var val) {
      setState(() {
        selectedRadio = val;
      });
    }

    setSelectedRadio2(var val2) {
      setState(() {
        selectedRadio2 = val2;
      });
    }

    setSelectedRadio3(var val3) {
      setState(() {
        selectedRadio3 = val3;
      });
    }

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
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
                padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
                    child: Text(
                      "Quiz Create",
                      style:
                          TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                          child: TextField(
                            controller: createquizcontroller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "จำนวนคำถามของคุณ",
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 140,
                                height: 50,
                                child: RaisedButton(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 30),
                                  onPressed: () {
                                    validateAndSubmit();
                                  },
                                  color: Color.fromARGB(255, 149, 243, 218),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Text(
                                    "Create",
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
                  // Container(
                  //   margin: EdgeInsets.fromLTRB(0, 40, 0, 10),
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(25),
                  //       border: Border.all(color: Colors.grey)),
                  //   child: Column(
                  //     children: [
                  //       Padding(
                  //         padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  //         child: TextField(
                  //           decoration: InputDecoration(
                  //             labelText: "ตั้งคำถามของคุณ",
                  //             focusedBorder: OutlineInputBorder(
                  //               borderSide:
                  //                   BorderSide(color: Colors.grey, width: 1.0),
                  //               borderRadius: BorderRadius.circular(20),
                  //             ),
                  //             border: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(20),
                  //             ),
                  //           ),
                  //           // style: Theme.of(context).textTheme.headline6,
                  //           style: TextStyle(
                  //               fontSize: 16, fontWeight: FontWeight.bold),
                  //         ),
                  //       ),
                  //       Container(
                  //         child: Column(
                  //           children: <Widget>[
                  //             Row(
                  //               children: [
                  //                 Radio(
                  //                   value: 1,
                  //                   groupValue: selectedRadio,
                  //                   // activeColor: Colors.black,
                  //                   onChanged: ((val) {
                  //                     print("object $val");
                  //                     setSelectedRadio(val);
                  //                   }),
                  //                 ),
                  //                 Text(
                  //                   "TEST",
                  //                   style: TextStyle(
                  //                       fontSize: 15,
                  //                       fontWeight: FontWeight.bold),
                  //                 )
                  //               ],
                  //             ),
                  //             Row(
                  //               children: [
                  //                 Radio(
                  //                   value: 2,
                  //                   groupValue: selectedRadio,
                  //                   // activeColor: Colors.black,
                  //                   onChanged: ((val) {
                  //                     print("object $val");
                  //                     setSelectedRadio(val);
                  //                   }),
                  //                 ),
                  //                 Text(
                  //                   "TEST",
                  //                   style: TextStyle(
                  //                       fontSize: 15,
                  //                       fontWeight: FontWeight.bold),
                  //                 )
                  //               ],
                  //             ),
                  //             Row(
                  //               children: [
                  //                 Radio(
                  //                   value: 3,
                  //                   groupValue: selectedRadio,
                  //                   // activeColor: Colors.black,
                  //                   onChanged: ((val) {
                  //                     print("object $val");
                  //                     setSelectedRadio(val);
                  //                   }),
                  //                 ),
                  //                 Expanded(
                  //                     child: Text(
                  //                   "TEST TEST TEST TEST TEST TEST",
                  //                   style: TextStyle(
                  //                       fontSize: 15,
                  //                       fontWeight: FontWeight.bold),
                  //                 ))
                  //               ],
                  //             ),
                  //             Row(
                  //               children: [
                  //                 Radio(
                  //                   value: 4,
                  //                   groupValue: selectedRadio,
                  //                   // activeColor: Colors.black,
                  //                   onChanged: ((val) {
                  //                     print("object $val");
                  //                     setSelectedRadio(val);
                  //                   }),
                  //                 ),
                  //                 Text(
                  //                   "TEST",
                  //                   style: TextStyle(
                  //                       fontSize: 15,
                  //                       fontWeight: FontWeight.bold),
                  //                 )
                  //               ],
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(
                    height: 155,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void validateAndSubmit() {
    var create = createquizcontroller.text.toString().trim();
    var numquiz = int.parse(create);
    if (create.isNotEmpty) {
      Get.to(() => quizme_page(numquiz));
    } else {
      Get.snackbar(
        "About Login",
        "false Create",
        backgroundColor: Color.fromARGB(255, 149, 243, 218),
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "โปรดระบุจำนวนคำถามของคุณ",
          style: TextStyle(color: Colors.black),
        ),
      );
    }
  }
}
