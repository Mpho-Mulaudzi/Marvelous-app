import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Your Pin',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        backgroundColor: const Color.fromRGBO(255, 250, 250, 1.0),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Add a Pin Number to make a your account more secure',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30.0,
              ),
              PinCodeFields(
                length: 4,
                fieldBorderStyle: FieldBorderStyle.Square,
                responsive: false,
                fieldHeight: 40.0,
                fieldWidth: 40.0,
                borderWidth: 1.0,
                obscureText: true,

                activeBorderColor: Colors.red,
                activeBackgroundColor: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                keyboardType: TextInputType.number,
                fieldBackgroundColor: Colors.black12,
                borderColor: Colors.black38,
                textStyle: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
                onComplete: (output) {
                  // Your logic with pin code
                  print(output);
                },
              ),
                const SizedBox(
                   height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      elevation: 0.0,
                      primary: const Color.fromRGBO(226, 18, 33, 1.0)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/biometric');
                  },
                  child: const Text(
                    '           Continue          ',
                    style: TextStyle(fontSize: 14, color: Colors.white, wordSpacing: 10.0 ),
                  ),
                ),
              Center(
                  child: Image(
                      image: AssetImage('assets/My_password.png'),
                      width: 200,
                      height: 200,
                  )
              ),

            ],
          ),
        ),
      ),

    );
  }
}
