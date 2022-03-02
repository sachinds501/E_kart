import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/cartLogo.jpeg",
            width: 130,
          ),
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: const [
          //     Text(
          //       "Welcome ",
          //       textAlign: TextAlign.center,
          //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          //     ),
          //     Text(
          //       "to E-cart",
          //       textAlign: TextAlign.center,
          //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          //     ),

          //   ],
          // ),
          RichText(
            text: const TextSpan(
              // text: 'Default',
              // style: TextStyle(color: Colors.red),
              /*defining default style is optional */
              children: <TextSpan>[
                TextSpan(
                    text: 'Welcome',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
                TextSpan(
                    text: ' to E-Kart',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
