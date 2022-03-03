// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:e_kart/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String imageUrl =
        "https://avatars.githubusercontent.com/u/77486237?s=400&u=309e40bd82d31aa48ae1f7aee925914dd5b90091&v=4";
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "eKart",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 23, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Text("Welcome my Friend"),
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Drawer(
          child: Container(
            color: Colors.white,
            child: ListView(padding: EdgeInsets.zero, children: [
              DrawerHeader(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    accountName: Text(
                      "Sachin Solanki",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    accountEmail: Text(
                      "sachinds501@gmail.com",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange[600],
                    ),
                    currentAccountPicture:
                        CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
                    onDetailsPressed: () => Navigator.pushNamed(
                        context, MyRoutes.userprofileRoutes)),
              ),
              // Divider(color: Colors.black),
              ListTile(
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.orange[700],
                  ),
                  title: Text("Home")),
              // Divider(color: Colors.black),
              ListTile(
                  leading: Icon(
                    CupertinoIcons.building_2_fill,
                    color: Colors.orange[700],
                  ),
                  title: Text("Malls and Centers")),
              // Divider(color: Colors.black),
              ListTile(
                  leading: Icon(
                    CupertinoIcons.list_bullet,
                    color: Colors.orange[700],
                  ),
                  title: Text("Payment options")),
              // Divider(color: Colors.black),
              ListTile(
                  leading: Icon(
                    CupertinoIcons.money_dollar_circle,
                    color: Colors.orange[700],
                  ),
                  title: Text("Payment History")),
              // Divider(color: Colors.black),
              ListTile(
                  leading: Icon(
                    CupertinoIcons.question_circle,
                    color: Colors.orange[700],
                  ),
                  title: Text("Help")),
              // Divider(color: Colors.black),
              ListTile(
                  leading: Icon(
                    CupertinoIcons.arrow_left_circle,
                    color: Colors.orange[700],
                  ),
                  title: Text("Logout")),
              // Divider(color: Colors.black),
            ]),
          ),
        ),
      ),
    );
  }
}
