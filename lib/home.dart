// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:qiuz_app/body.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // ignore:
          title: Text("Quiz App"),
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 20,
                  )
                ],
              ),
              Container(
                width: double.infinity,
                height: 130,
                margin: EdgeInsets.only(bottom: 10, left: 30, right: 30),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "This is answer",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
              ),
              Body(),
              Body(),
              Body(),
              Body(),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                ),
                onPressed: () {},
                child: Text("Next"),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "0/5",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ));
  }
}
