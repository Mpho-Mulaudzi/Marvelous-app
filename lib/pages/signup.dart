import "package:flutter/material.dart";

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
           child: Column(
             children: const <Widget>[
                 Text(
                   'Create an account',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12.0,
                    ),
                 )
             ],
           ),
         )
    );
  }
}
