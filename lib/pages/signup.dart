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
           child: Padding(
             padding: const EdgeInsets.all(40.0),
             child: Column(
               children:<Widget>[
                  Image.asset('assets/cat.gif',
                      height: 200,
                      width: 300,
                  ),
                  const Text(
                        "Let's you in...",
                         style: TextStyle(
                           color: Colors.deepPurple,
                           fontFamily: 'Urbanist',
                           fontSize: 30,
                           fontWeight: FontWeight.bold,
                           letterSpacing: 2.0
                         ),
                  )

               ],
             ),
           ),
         )
    );
  }
}
