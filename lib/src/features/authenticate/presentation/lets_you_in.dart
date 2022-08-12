import "package:flutter/material.dart";
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LetsYouIn extends StatefulWidget {
  const LetsYouIn({Key? key}) : super(key: key);

  @override
  State<LetsYouIn> createState() => _LetsYouInState();
}

class _LetsYouInState extends State<LetsYouIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
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
                  'assets/Welcome.png',

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
        padding: const EdgeInsets.fromLTRB(60, 8, 60, 8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              elevation: 0.0,
              primary: const Color.fromRGBO(226, 18, 33, 1.0)),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
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
                Navigator.pushNamed(context, '/signup');
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
