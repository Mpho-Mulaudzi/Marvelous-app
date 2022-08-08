import 'package:flutter/material.dart';
class FingerPrint extends StatefulWidget {
  const FingerPrint({Key? key}) : super(key: key);

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Set Your Fingerprint',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        backgroundColor: const Color.fromRGBO(255, 250, 250, 1.0),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[
            Text(
              'Add a finger prints to make a your account more secure',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.0,
            ),
             Center(
               child: Image(
                 image: AssetImage('assets/icon/fingerprint.png'))
             ),

             SizedBox(
              height: 10,
            ),
            Text(
              'Please put your finger on the finger prints scanner to get started',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      )
    );



  }
}
