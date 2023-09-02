import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/result.dart';

class Quiz_Page extends StatefulWidget {
  final int page;

  const Quiz_Page({super.key, required this.page});

  @override
  State<Quiz_Page> createState() => _Quiz_PageState();
}

class _Quiz_PageState extends State<Quiz_Page> {
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
              height: MediaQuery.of(context).size.height * 0.5,
              color: Color(0xFFfb6f92),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  children: [
                    Row(
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
                                child: Image.asset(widget.page == 0
                                    ? "assets/c++_icon.png"
                                    : widget.page == 1
                                        ? "assets/java_icon.png"
                                        : "assets/python_icon.png"),
                              ),
                            )),
                      ],
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Question",
                                style: TextStyle(
                                    fontSize: 25, color: Color(0xFFfb6f92)),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              children: [
                InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.pink),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              "A",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ))),
                SizedBox(height: 20),
                InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.pink),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              "B",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ))),
                SizedBox(height: 20),
                InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.pink),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              "C",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ))),
                SizedBox(height: 20),
                InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.pink),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              "D",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ))),
                SizedBox(height: 20),
                ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (_) => Result()));
                      },
                      color: Color(0xFFfb6f92),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Next",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w900)),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
