// ignore_for_file: avoid_print, prefer_const_constructors, unused_element

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QRCodePage extends StatefulWidget {
  const QRCodePage({Key? key}) : super(key: key);

  @override
  State<QRCodePage> createState() => _QRCodePageState();
}

class _QRCodePageState extends State<QRCodePage> {
  String result = "Scan generated QR Code to Pay...!";

  get scanner => null;
  Future _scanQR() async {
    try {
      String? cameraScanResult = await scanner.scan();
      setState(() {
        result =
            cameraScanResult!; // setting string result with cameraScanResult
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }

  static List<Image> kIcons = <Image>[
    Image.asset("assets/images/qrcode3.png"),
    Image.asset("assets/images/qrcode1.jpg"),
    Image.asset("assets/images/qrcode2.jpg"),
    Image.asset("assets/images/qrcode4.jpeg"),
    Image.asset("assets/images/qrcode5.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[700],
        title: Text("Scan and Pay"),
      ),
      body: DefaultTabController(
        length: kIcons.length,
        // Use a Builder here, otherwise `DefaultTabController.of(context)` below
        // returns null.
        child: Builder(
          builder: (BuildContext context) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                const TabPageSelector(),
                Expanded(
                  child: IconTheme(
                    data: IconThemeData(
                      size: 128.0,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    child: TabBarView(children: kIcons),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.camera_alt),
          onPressed: () {
            // _scanQR(); /// calling a function when user click on button
          },
          label: const Text("Scan")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
