import 'package:flutter/material.dart';

class quizme_page extends StatelessWidget {
  int numquiz;
  quizme_page(this.numquiz, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/black.jpg"), fit: BoxFit.cover),
        ),
        child: Stack(alignment: Alignment.center, children: <Widget>[
          ListView.builder(
            itemCount: numquiz,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
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
                                    fontSize: 13, fontWeight: FontWeight.bold),
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
                                    fontSize: 13, fontWeight: FontWeight.bold),
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
                                    fontSize: 13, fontWeight: FontWeight.bold),
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
                                    fontSize: 13, fontWeight: FontWeight.bold),
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
              );
            },
          ),
          // Padding(
          //   padding: EdgeInsets.fromLTRB(0, 700, 0, 0),
          //   child: Container(
          //     child: Column(
          //       mainAxisSize: MainAxisSize.min,
          //       children: [
          //         SizedBox(
          //           width: 120,
          //           height: 50,
          //           child: RaisedButton(
          //             padding:
          //                 EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          //             onPressed: () {
          //               // validateAndSubmit();
          //             },
          //             color: Color.fromARGB(255, 149, 243, 218),
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.all(Radius.circular(30))),
          //             child: Text(
          //               "Submit",
          //               style: TextStyle(fontSize: 17),
          //             ),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
        ]),
      ),
    );
  }
}
