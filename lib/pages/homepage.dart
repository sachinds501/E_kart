// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unnecessary_new, non_constant_identifier_names
import 'package:e_kart/bottomNavBar/qr_code_page.dart';
import 'package:e_kart/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bottomNavBar/bill_page.dart';
import '../bottomNavBar/page3.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var pageIndex = 0;
  final pages = [
    const BillPage(),
    const QRCodePage(),
    const Page3(),
  ];

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
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Container(width: 170.0, child: Text("About us")),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Text("Settings"),
                      value: 2,
                    ),
                    PopupMenuItem(
                      child: Text("Help"),
                      value: 3,
                    ),
                    PopupMenuItem(
                      child: Text("How to Use ?"),
                      value: 4,
                    )
                  ])
        ],
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),

      //Drawer
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.7,
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
                        gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 238, 116, 15),
                      Colors.orange,
                    ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
                    currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(imageUrl),
                        backgroundColor: Colors.amber),
                    onDetailsPressed: () => Navigator.pushNamed(
                        context, MyRoutes.userprofileRoutes)),
              ),
              Divider(
                color: Colors.black,
                indent: 10, // empty space to the leading edge of divider.
                endIndent: 10,
              ),
              ListTile(
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.orange[700],
                  ),
                  title: Text("Home")),
              // Divider(
              //   color: Colors.black,
              //   indent: 10, // empty space to the leading edge of divider.
              //   endIndent: 10,
              // ),
              ListTile(
                  leading: Icon(
                    CupertinoIcons.building_2_fill,
                    color: Colors.orange[700],
                  ),
                  title: Text("Malls and Centers")),
              // Divider(
              //   color: Colors.black,
              //   indent: 10, // empty space to the leading edge of divider.
              //   endIndent: 10,
              // ),
              ListTile(
                  leading: Icon(
                    CupertinoIcons.list_bullet,
                    color: Colors.orange[700],
                  ),
                  title: Text("Payment options")),
              // Divider(
              //   color: Colors.black,
              //   indent: 10, // empty space to the leading edge of divider.
              //   endIndent: 10,
              // ),
              ListTile(
                  leading: Icon(
                    CupertinoIcons.money_dollar_circle,
                    color: Colors.orange[700],
                  ),
                  title: Text("Payment History")),
              Divider(
                color: Colors.black,
                indent: 10, // empty space to the leading edge of divider.
                endIndent: 10,
              ),
              ListTile(
                  leading: Icon(
                    CupertinoIcons.question_circle,
                    color: Colors.orange[700],
                  ),
                  title: Text("Help Center")),
              ListTile(
                  leading: Icon(
                    CupertinoIcons.settings,
                    color: Colors.orange[700],
                  ),
                  title: Text("Settings")),
              Divider(
                color: Colors.black,
                indent: 10, // empty space to the leading edge of divider.
                endIndent: 10,
              ),
              ListTile(
                  leading: Icon(
                    CupertinoIcons.arrow_left_circle,
                    color: Colors.orange[700],
                  ),
                  title: Text("Logout"),
                  onTap: () => Navigator.pushReplacementNamed(
                      context, MyRoutes.loginRoutes)),
              Divider(
                color: Colors.black,
                indent: 10, // empty space to the leading edge of divider.
                endIndent: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\n\n\nAll the rights are reserved by @SYS Developers.",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 58,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color.fromARGB(255, 53, 53, 53),
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    CupertinoIcons.news_solid,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    CupertinoIcons.news,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.qr_code_scanner_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.qr_code_scanner_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.widgets_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.widgets_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}
