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
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: selectedRadio2,
                                    // activeColor: Colors.black,
                                    onChanged: ((val2) {
                                      print("object $val2");
                                      setSelectedRadio2(val2);
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
                                    groupValue: selectedRadio2,
                                    // activeColor: Colors.black,
                                    onChanged: ((val2) {
                                      print("object $val2");
                                      setSelectedRadio2(val2);
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
                                    groupValue: selectedRadio2,
                                    // activeColor: Colors.black,
                                    onChanged: ((val2) {
                                      print("object $val2");
                                      setSelectedRadio2(val2);
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
                                    groupValue: selectedRadio2,
                                    // activeColor: Colors.black,
                                    onChanged: ((val2) {
                                      print("object $val2");
                                      setSelectedRadio2(val2);
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
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: selectedRadio3,
                                    // activeColor: Colors.black,
                                    onChanged: ((val3) {
                                      print("object $val3");
                                      setSelectedRadio3(val3);
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
                                    groupValue: selectedRadio3,
                                    // activeColor: Colors.black,
                                    onChanged: ((val3) {
                                      print("object $val3");
                                      setSelectedRadio3(val3);
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
                                    groupValue: selectedRadio3,
                                    // activeColor: Colors.black,
                                    onChanged: ((val3) {
                                      print("object $val3");
                                      setSelectedRadio3(val3);
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
                                    groupValue: selectedRadio3,
                                    // activeColor: Colors.black,
                                    onChanged: ((val3) {
                                      print("object $val3");
                                      setSelectedRadio3(val3);
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
                  SizedBox(
                    height: 55,
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
                              // validateAndSubmit();
                            },
                            color: Color.fromARGB(255, 149, 243, 218),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Text(
                              "Submit",
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
