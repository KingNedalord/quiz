import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFfb6f92),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
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
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your score :",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Dancing"),
                ),
                Text(
                  "40/40",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Dancing"),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Image.asset("assets/completed.png"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
