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
        padding: const EdgeInsets.fromLTRB(20, 100, 20, 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Add a finger prints to make a your account more secure',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 80.0,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Center(
                child :ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: const Image(
                    image: AssetImage('assets/Fingerprint.png'),
                    height: 209,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              'Please put your finger on the finger prints scanner to get started',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 0.0,
                    primary: const Color.fromRGBO(255, 200, 200, 1.0)),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(226, 18, 33, 1.0)),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 0.0,
                    primary: const Color.fromRGBO(226, 18, 33, 1.0)),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
