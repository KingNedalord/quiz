import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/quiz_page.dart';

class Main_Activity extends StatefulWidget {
  const Main_Activity({super.key});

  @override
  State<Main_Activity> createState() => _Main_ActivityState();
}

class _Main_ActivityState extends State<Main_Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              color: Color(0xFFfb6f92),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: CircleAvatar(
                        radius: 110, // Image radius
                        backgroundColor: Color(0xFFff8fab),
                        child: CircleAvatar(
                          radius: 90, // Image radius
                          backgroundColor: Color(0xFFffb3c6),
                          child: CircleAvatar(
                            radius: 70, // Image radius
                            backgroundColor: Color(0xFFffe5ec),
                            child: Image.asset("assets/quiz.png"),
                          ),
                        )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (_) => Quiz_Page(page: 0)));
                  },
                  child: Container(
                    padding: EdgeInsets.zero,
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Image.asset("assets/c++.png"),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (_) => Quiz_Page(page: 1)));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Image.asset("assets/java.png"),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (_) => Quiz_Page(page: 2)));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Image.asset("assets/python.png"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
