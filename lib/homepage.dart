// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "eKart",
              style:
                  TextStyle(fontSize: 23, color: Color.fromARGB(255, 10, 0, 145)),
            ),
          ),
          // backgroundColor: Colors.blue,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 60, 255, 0),
              Color.fromARGB(255, 253, 253, 253),
              Color.fromARGB(255, 245, 99, 2),
            ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
          ),
          centerTitle: true,
        ), body: null,
      ),
      drawer: Drawer(),
    );
  }
}
