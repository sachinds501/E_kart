// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_declarations, sized_box_for_whitespace

import 'package:flutter/material.dart';


class Drawer extends StatelessWidget {
  const Drawer({Key? key, required Container child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://w7.pngwing.com/pngs/971/990/png-transparent-computer-icons-login-person-user-pessoa-smiley-desktop-wallpaper-address-icon.png";
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Drawer(
        child: Container(
          color: Colors.orange[900],
        ),
      ),
    );
  }
}
