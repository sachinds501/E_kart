// ignore_for_file: unused_local_variable, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class Billpage2 extends StatefulWidget {
  const Billpage2({Key? key}) : super(key: key);

  @override
  State<Billpage2> createState() => _Billpage2State();
}

class _Billpage2State extends State<Billpage2> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    const title = 'Dismissing Items';
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            child: Text(
              "Total Bill Amount",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Dismissible(
                  // Each Dismissible must contain a Key. Keys allow Flutter to
                  // uniquely identify widgets.
                  key: Key(item),
                  // Provide a function that tells the app
                  // what to do after an item has been swiped away.
                  onDismissed: (direction) {
                    // Remove the item from the data source.
                    setState(() {
                      items.removeAt(index);
                    });

                    // Then show a snackbar.
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('$item dismissed')));
                  },
                  // Show a red background as the item is swiped away.
                  background: Container(color: Colors.red),
                  child: ListTile(
                    title: Text(item),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
