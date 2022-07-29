import "package:flutter/material.dart";

class createAccountpage extends StatefulWidget {
  const createAccountpage({Key? key}) : super(key: key);
  @override
  State<createAccountpage> createState() => _createAccountpageState();
}
class _createAccountpageState extends State<createAccountpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Padding(
           padding: const EdgeInsets.fromLTRB(10,100, 10, 100),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                        Image.asset('assets/logo.png',
                          height: 100,
                          width: 200,
                        ),
                const SizedBox(
                  height:28,
                ),
                const Text(
                  "Create Your Account",
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Urbanist',
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0
                  ),
                ),
              ],
           ),
         ),
       ),
    );
  }
}


