// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class FindMalls extends StatefulWidget {
  const FindMalls({Key? key}) : super(key: key);

  @override
  State<FindMalls> createState() => FindMallsState();
}

class FindMallsState extends State<FindMalls> {
  static const menuItems = <String>[
    'DEPSTAR',
    'CSPIT',
    'CMPICA',
    'PDPICA',
    'CIPS',
  ];

  final List<DropdownMenuItem<String>> _dropDownMenuItems1 = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  String? _btn1SelectedVal;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Page 3"),
      ),
    );
  }
}
