import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:food_app/screens/home/home_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_button/sign_button.dart';
//import 'package:food_app/screens/home/home_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  _googleSignUp() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      // ignore: unused_local_variable
      final FirebaseAuth auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await auth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);

      return user;
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          image: DecorationImage(
              // ignore: prefer_const_constructors
              fit: BoxFit.cover,
              // ignore: prefer_const_constructors
              image: AssetImage('assets/background.png')),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Sign in to contunue'),
                  Text(
                    'Vegi',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      shadows: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.green.shade900,
                          // ignore: prefer_const_constructors
                          offset: Offset(3, 3),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SignInButton(
                          buttonType: ButtonType.apple,
                          onPressed: () {
                            print('click');
                          }),
                      SignInButton(
                          buttonType: ButtonType.google,
                          onPressed: () {
                            _googleSignUp().then(
                              (value) => Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  // ignore: prefer_const_constructors
                                  builder: (context) => SignIn(),
                                ),
                              ),
                            );
                            // ignore: avoid_print
                            print('click');
                          }),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'By signing in you are agreeing to our',
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                      Text(
                        'term and privacy policy',
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
