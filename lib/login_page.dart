// ignore_for_file: avoid_unnecessary_containers, deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:qiuz_app/bg_image.dart';

import 'package:qiuz_app/home.dart';

// ignore: use_key_in_widget_constructors
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore:
    return Scaffold(
        appBar: AppBar(
          // ignore:
          title: Text("Start Page"), centerTitle: true,
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Bg(),
            Text(
              "Welcom  To Our Screen /n Quiz App Play  /n Scro Your Knoladge",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Card(
                    color: Colors.brown,
                    child: Column(
                      children: [
                        Form(
                            child: Column(children: [
                          TextFormField(
                              decoration: InputDecoration(
                            hintText: "Enter Name",
                            labelText: "Name",
                          )),
                        ])),
                        SizedBox(
                          height: 20,
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          color: Colors.orange,
                          child: Text("Let's Start"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
