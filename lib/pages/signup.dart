import "package:flutter/material.dart";
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: const Image(
                  height: 200,
                  width:200,
                  image: AssetImage(
                  'assets/letsyouin.jpg',

                ),
              ),
              ),
              const Text(
                "Let's you in...",
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Urbanist',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0),
              ),
              const SizedBox(
                height: 15,
              ),
              SignInButton(
                Buttons.FacebookNew ,
                text: "Continue with facebook",
                onPressed: () {},
                elevation: 0.0,
              ),
              const SizedBox(
                height: 3,
              ),
              SignInButton(
                Buttons.Google,
                text: "Continue with Google",
                onPressed: () {},
                elevation: 0.0,

              ),
              const SizedBox(
                height: 3,
              ),
              SignInButton(
                Buttons.Apple,
                text: "Continue with Apple",
                onPressed: () {},
                elevation: 0.0,

              ),
              const Text('Or',
                  style: TextStyle(fontSize: 16, color: Colors.blueGrey)),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(60, 0, 60, 25),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              elevation: 0.0,
              primary: const Color.fromRGBO(226, 18, 33, 1.0)),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: const Text(
            'Sign in with password',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(60, 0, 60, 20),
        child: Row(
          children: [
            const Text("Don't have an account? "),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/create');
              },
              child: const Text(
                "Sign up",
                style: TextStyle(color: Color.fromRGBO(226, 18, 33, 1.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
