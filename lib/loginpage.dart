// ignore_for_file: unused_local_variable, avoid_print, prefer_typing_uninitialized_variables, must_be_immutable, prefer_const_constructors

import 'package:blinking_text/blinking_text.dart';
import 'package:e_kart/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  get nameController => null;

  get email => null;

  set _name(String? _name) {}

  @override
  Widget build(BuildContext context) {
    var _loginKey;
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _loginKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 88.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/cartLogo.jpeg",
                  width: 120,
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Welcome',
                          style: TextStyle(
                              color: Color.fromARGB(225, 240, 120, 40),
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),
                      TextSpan(
                          text: ' to eKart',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 30)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                const BlinkText(
                  '*Make billing more effiecnt, easy\n      and less time consuming*',
                  style: TextStyle(
                      fontSize: 12.0, color: Color.fromARGB(255, 214, 42, 42)),
                  endColor: Color.fromARGB(255, 0, 0, 0),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.mail,
                              color: Color.fromARGB(225, 240, 120, 40),
                            ),
                          ),
                          labelText: 'Email',
                        ),
                        onSaved: (String? value) {
                          _name = value;
                          print('email=$email');
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.lock,
                                color: Color.fromARGB(225, 240, 120, 40),
                              ),
                            ),
                            labelText: 'Password',
                          ),
                          onSaved: (value) {
                            var password;
                            password.text = value!;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cannot be empty";
                            } else if (value.length < 8) {
                              return "Password must have atleast 8 characters";
                            }
                            return null;
                          }),
                      const SizedBox(
                        height: 5,
                      ),
                      TextButton(
                        child: Text(
                          "Forgot Password?",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        onPressed: () => Navigator.pushNamed(
                            context, MyRoutes.forgotpasswordpageRoutes),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(225, 240, 120, 40),
                            onPrimary: Colors.white,
                            minimumSize: const Size(180, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            )),
                        icon:
                            const FaIcon(FontAwesomeIcons.arrowAltCircleRight),
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homepageRoutes);
                        },
                        label: const Text(
                          ' Login',
                          style: TextStyle(
                            fontSize: 20,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    child: Text(
                      "    Don't have an account? Create it here",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    onPressed: () => Navigator.pushNamed(
                        context, MyRoutes.forgotpasswordpageRoutes),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: SignInButton(
                    Buttons.GoogleDark,
                    text: "Sign in with Google",
                    onPressed: () => Navigator.pushNamed(
                        context, MyRoutes.createNewAccountRoutes),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: SignInButton(
                    Buttons.Google,
                    text: "Sign up with Google",
                    onPressed: () => Navigator.pushNamed(
                        context, MyRoutes.createNewAccountRoutes),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
