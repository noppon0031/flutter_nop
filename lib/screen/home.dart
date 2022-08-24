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
  var selectedRadio;
  late String difference = "00:00";
  String dateFormat = 'EEEE, d MMMM';
  bool btncheckin = true;
  Timer? timerC;
  DateTime? datenow = DateTime.now();
  // late NewmainBloc newMainBloc;

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
                      "Home Screen",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 85,
                  ),
                  CircularPercentIndicator(
                    radius: 120.0,
                    lineWidth: 20.0,
                    percent: 1.0,
                    center: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        difference,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    progressColor: Color.fromRGBO(55, 180, 170, 1),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(DateFormat(dateFormat).format(DateTime.now())),
                      Text(
                          "${DateFormat('H').format(datenow!)}:${DateFormat('mm').format(datenow!)}:${DateFormat('ss').format(datenow!)}"),
                      Text("Location"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
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
                              ? Color.fromRGBO(30, 126, 118, 1)
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
                        // btncheckin ? OnClickCheckIn() : OnClickCheckOut();
                        // AwesomeDialogCustom(
                        //     context: context,
                        //     desc: "TEST",
                        //     dialogType: DialogType_Custom.CHECKIN,
                        //     btnOkOnPress: () => print("object"))
                        //   ..showOk();
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

  String daysBetween(DateTime from, String difference) {
    DateTime to = DateTime.now();
    from = DateTime(
        from.year, from.month, from.day, from.hour, from.minute, from.second);
    to = DateTime(to.year, to.month, to.day, to.hour, to.minute, to.second);
    int h = (to.difference(from).inMinutes / 60).toInt();
    int m = (to.difference(from).inMinutes % 60).toInt();

    if (difference.isNotEmpty) {
      TimeOfDay z = TimeOfDay(
          hour: int.parse(difference.split(":")[0]),
          minute: int.parse(difference.split(":")[1]));

      h += z.hour;
      m += z.minute;

      if (m >= 60) {
        int mtoh = (m / 60).toInt();
        h += mtoh;
        m = m % 60;
      }

      return "${h.toString().length == 1 ? "0$h" : "$h"}:${m.toString().length == 1 ? "0$m" : "$m"}";
    }

    if (h >= 24 && m > 0) {
      timerC?.cancel();
      return difference;
    }
    return "${h.toString().length == 1 ? "0$h" : "$h"}:${m.toString().length == 1 ? "0$m" : "$m"}";
  }
}
