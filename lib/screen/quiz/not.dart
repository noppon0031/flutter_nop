import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Quiz_Createme extends StatelessWidget {
  int numquiz;
  Quiz_Createme(this.numquiz, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      "Quiz Me",
                      style:
                          TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Container(
                  //   padding: EdgeInsets.fromLTRB(120, 30, 0, 10),
                  //   child: Text(
                  //     text + "  Quiz",
                  //     style:
                  //         TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                  // Container(
                  //   child: ListView.builder(
                  //       itemCount: numquiz,
                  //       itemBuilder: (BuildContext context, int index) {
                  //         return ListTile(
                  //           leading: const Icon(Icons.list),
                  //           trailing: const Text("data"),
                  //         );
                  //       }),
                  // ),

                  Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.grey)),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "ตั้งคำถามของคุณ",
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            // style: Theme.of(context).textTheme.headline6,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(25, 10, 25, 3),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: "คำตอบที่ 1",
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1.0),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    // style: Theme.of(context).textTheme.headline6,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(25, 3, 25, 3),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: "คำตอบที่ 2",
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1.0),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    // style: Theme.of(context).textTheme.headline6,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(25, 3, 25, 3),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: "คำตอบที่ 3",
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1.0),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    // style: Theme.of(context).textTheme.headline6,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(25, 3, 25, 3),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: "คำตอบที่ 4",
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1.0),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    // style: Theme.of(context).textTheme.headline6,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 45,
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
                              "Create",
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
