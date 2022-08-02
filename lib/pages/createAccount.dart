import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class createAccountpage extends StatefulWidget {
  const createAccountpage({Key? key}) : super(key: key);

  @override
  State<createAccountpage> createState() => _createAccountpageState();
}

class _createAccountpageState extends State<createAccountpage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/logo.png',
                height: 100,
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Create Your Account",
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Urbanist',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0),
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextFormField(
                      style : const TextStyle( fontSize: 15,color: Colors.black),
                      decoration: const InputDecoration(hintText: 'Email',
                      prefixIcon: Icon(Icons.email,size: 20,color:Colors.black)),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      obscureText: _isObscure,
                      style : const TextStyle( fontSize: 15 , color: Colors.black),
                      decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: const Icon(Icons.lock, size:20,color:Colors.black),
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              })),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            elevation: 14.0,
                            primary: const Color.fromRGBO(226, 18, 33, 1.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          'Sign up',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text('Or continue with',
                          style: TextStyle(fontSize: 16, color: Colors.blueGrey)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: <Widget>[
                         Expanded(
                           child : Image.asset(
                             'assets/icon/facebook.png',
                             height: 25,
                             width: 25,
                           ),
                         ),
                         // SizedBox( width: 10),
                         Expanded(
                           child:Image.asset(
                             'assets/icon/google.png',
                             height: 25,
                             width: 25,
                           ),
                         ),
                         // SizedBox( width: 10),
                         Expanded(
                           child:Image.asset(
                             'assets/icon/Apple.png',
                             height: 25,
                             width: 25,
                           ),
                         )
                       ],
                     )
                  ],

                ),
              )
            ],
          ),
        ),
      ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(60, 0, 60, 10),
          child: Row(
            children: [
              const Text("Already have an account?"),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  "Signin",
                  style: TextStyle(color: Color.fromRGBO(226, 18, 33, 1.0)),
                ),
              ),
            ],
          ),
        )
    );
  }
}
