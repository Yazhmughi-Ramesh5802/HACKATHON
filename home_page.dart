import 'package:demo_hack/color.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class main_page extends StatefulWidget {
  @override
  State<main_page> createState() => _mainPageState();
}

String desc = "";

@override
class _mainPageState extends State<main_page> {
  List<Widget> dates_tab = [
    dates("images/happy.png"),
    dates("images/kiss.png"),
    dates("images/surprised.png"),
    dates("images/angry.png"),
    dates("images/sick.png"),
    dates("images/blushing.png"),
    dates("images/happy2.png"),
    dates("images/laughing.png"),
  ];

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return (SafeArea(
        child: Scaffold(
            backgroundColor: c1,
            body: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: height * .04),
                Container(
                  height: height * 0.21,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      //color: Colors.pink,
                      borderRadius: BorderRadius.circular(20),
                      color: c2),
                  child: Stack(children: [
                    Positioned(
                        left: 200,
                        bottom: -5,
                        right: -2,
                        top: -5,
                        child: Image.asset("images/bg.png")),
                    Positioned(
                        left: 5,
                        top: 15,
                        child: Container(
                          width: 250,
                          height: 140,
                          //color: Colors.black,
                          child: Text(
                              "Rise Up start fresh... \nsee the bright\nopportunity in\neach day ",
                              style: GoogleFonts.merriweather(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        )),
                  ]),
                ),
                SizedBox(height: height * .04),
                DefaultTabController(
                    length: dates_tab.length,
                    child: TabBar(
                      labelColor: c1,
                      unselectedLabelColor: c2,
                      indicatorColor: c2,
                      isScrollable: true,
                      tabs: dates_tab,
                    )),
                SizedBox(
                  height: 70,
                ),
                details(),
              ]),
            ))));
  }
}

Widget details() {
  return Stack(
    children: [
      Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
            color: c4,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
      ),
      Positioned(
        left: 40,
        top: 20,
        child: Container(
          child: Text("Quotes to motivate you and \nkeep you smiling all day",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              )),
          height: 50,
          width: 300,
        ),
      ),
      SizedBox(height: 200),
      Positioned(
        left: 40,
        right: 40,
        top: 100,
        bottom: 20,
        child: Container(
          decoration:
              BoxDecoration(color: c3, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: Text(
                "      This is where we have the text of the daily mood tracker",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
          ),
          height: 150,
          width: 300,
        ),
      )
    ],
  );
}

Widget dates(String image_name) {
  return (Stack(
    clipBehavior: Clip.none,
    children: [
      Positioned(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: c2,
          ),
          height: 150,
          width: 100,
        ),
      ),
      Positioned(
          left: 20,
          right: 20,
          bottom: 30,
          top: 30,
          child: Container(
            height: 70,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image_name), fit: BoxFit.fill),
              //color: Colors.pink,
            ),
          )),
      Positioned(
        left: 130,
        top: 50,
        child: Container(
            height: 70,
            width: 130,
            child: Text(desc,
                style: GoogleFonts.merriweather(
                    color: Colors.black, fontSize: 10))),
      ),
    ],
  ));
}
