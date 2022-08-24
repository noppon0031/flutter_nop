// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_nop/screen/login/auth_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Quiz_Page extends StatefulWidget {
  const Quiz_Page({Key? key}) : super(key: key);

  @override
  State<Quiz_Page> createState() => Quiz_PageState();
}

class Quiz_PageState extends State<Quiz_Page> {
  var selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  Widget build(BuildContext context) {
    setSelectedRadio(var val) {
      setState(() {
        selectedRadio = val;
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
                      "Quiz Test",
                      style:
                          TextStyle(fontSize: 65, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.grey)),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
                          child: Text(
                            "TestQuiz TestQuiz TestQuiz TestQuiz TestQuiz TestQuiz TestQuiz TestQuiz TestQuiz TestQuiz  _______",
                            // style: Theme.of(context).textTheme.headline6,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // Container(
                        //   margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        //   padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        //   decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.grey),
                        //     borderRadius: BorderRadius.circular(15),
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Text(
                        //         "1. TestData TestData",
                        //         style: TextStyle(
                        //             fontSize: 15, fontWeight: FontWeight.bold),
                        //       ),
                        //       Container(
                        //         height: 26,
                        //         width: 26,
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(50),
                        //             border: Border.all(color: Colors.grey)),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        //   padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        //   decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.grey),
                        //     borderRadius: BorderRadius.circular(15),
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Text(
                        //         "2. TestData TestData",
                        //         style: TextStyle(
                        //             fontSize: 15, fontWeight: FontWeight.bold),
                        //       ),
                        //       Container(
                        //         height: 26,
                        //         width: 26,
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(50),
                        //             border: Border.all(color: Colors.grey)),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        //   padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        //   decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.grey),
                        //     borderRadius: BorderRadius.circular(15),
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Text(
                        //         "4. TestData TestData",
                        //         style: TextStyle(
                        //             fontSize: 15, fontWeight: FontWeight.bold),
                        //       ),
                        //       Container(
                        //         height: 26,
                        //         width: 26,
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(50),
                        //             border: Border.all(color: Colors.grey)),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        //   padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        //   decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.grey),
                        //     borderRadius: BorderRadius.circular(15),
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Text(
                        //         "4. TestData TestData",
                        //         style: TextStyle(
                        //             fontSize: 15, fontWeight: FontWeight.bold),
                        //       ),
                        //       Container(
                        //         height: 26,
                        //         width: 26,
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(50),
                        //             border: Border.all(color: Colors.grey)),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: selectedRadio,
                                    // activeColor: Colors.black,
                                    onChanged: ((val) {
                                      print("object $val");
                                      setSelectedRadio(val);
                                    }),
                                  ),
                                  Text(
                                    "TEST",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: 2,
                                    groupValue: selectedRadio,
                                    // activeColor: Colors.black,
                                    onChanged: ((val) {
                                      print("object $val");
                                      setSelectedRadio(val);
                                    }),
                                  ),
                                  Text(
                                    "TEST",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: 3,
                                    groupValue: selectedRadio,
                                    // activeColor: Colors.black,
                                    onChanged: ((val) {
                                      print("object $val");
                                      setSelectedRadio(val);
                                    }),
                                  ),
                                  Expanded(
                                      child: Text(
                                    "TEST TEST TEST TEST TEST TEST",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ))
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: 4,
                                    groupValue: selectedRadio,
                                    // activeColor: Colors.black,
                                    onChanged: ((val) {
                                      print("object $val");
                                      setSelectedRadio(val);
                                    }),
                                  ),
                                  Text(
                                    "TEST",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.grey)),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
                          child: Text(
                            "TestQuiz TestQuiz TestQuiz TestQuiz TestQuiz TestQuiz TestQuiz TestQuiz TestQuiz TestQuiz  _______",
                            // style: Theme.of(context).textTheme.headline6,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1. TestData TestData",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 26,
                                width: 26,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(color: Colors.grey)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "2. TestData TestData",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 26,
                                width: 26,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(color: Colors.grey)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "4. TestData TestData",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 26,
                                width: 26,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(color: Colors.grey)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "4. TestData TestData",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 26,
                                width: 26,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(color: Colors.grey)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
}
