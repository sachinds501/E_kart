// ignore_for_file: unused_local_variable, avoid_print, prefer_typing_uninitialized_variables, must_be_immutable, prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:blinking_text/blinking_text.dart';
import 'package:e_kart/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  get email => null;

  set _name(String? _name) {}
  set _password(String? _password) {}

  @override
  Widget build(BuildContext context) {
    final _loginKey = GlobalKey<FormState>();

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
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 280.0,
                  child: DefaultTextStyle(
                    style: GoogleFonts.robotoMono(
                      textStyle: TextStyle(
                        fontSize: 12.0,
                        color: Color.fromARGB(255, 71, 55, 55),
                      ),
                    ),
                    child: AnimatedTextKit(
                        isRepeatingAnimation: true,
                        animatedTexts: [
                          TyperAnimatedText('Make billing more effiecnt,easy',
                              speed: Duration(milliseconds: 100)),
                          TyperAnimatedText('and less time consuming',
                              speed: Duration(milliseconds: 100)),
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 9,
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
                        enableSuggestions: true,
                        onSaved: (String? value) {
                          _name = value;
                          print('email=$email');
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email cannot be empty";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 5,
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
                          obscureText: true,
                          enableSuggestions: true,
                          onSaved: (value) {
                            _password = value!;
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
                          onPressed: () => {
                                Navigator.pushNamed(
                                    context, MyRoutes.forgotpasswordpageRoutes),
                              }),
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
                          if (_loginKey.currentState!.validate()) {
                            Navigator.pushNamed(
                                context, MyRoutes.homepageRoutes);
                          }
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
                    child: RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: "Don't have an account?",
                              style: TextStyle(
                                  color: Color.fromARGB(225, 240, 120, 40),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          TextSpan(
                              text: ' Click here',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 10, 68, 177),
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    onPressed: () => Navigator.pushNamed(
                        context, MyRoutes.createNewAccountRoutes),
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
