import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:marvelous/src/services/auth.dart';
import 'package:marvelous/src/services/validator.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _signinPageState();

}

class _signinPageState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 30, 12, 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'assets/Welcoming.png',
                        height: 400,
                        width: 450,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "Login to Your Account",
                        style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'Urbanist',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            TextFormField(

                              style:
                              const TextStyle(fontSize: 12,),
                              decoration: const InputDecoration(
                                //align hint text and icons
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 17),
                                  border: InputBorder.none,
                                  hintText: 'Email',
                                  prefixIcon: Icon(Icons.email,
                                    size: 20,)),
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter email';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormField(

                              style:
                              const TextStyle(
                                  fontSize: 12, color: Colors.black),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 17),

                                  hintText: 'Password',
                                  prefixIcon: const Icon(Icons.lock,
                                    size: 20,),
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
                              height: 25,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  elevation: 0.0,
                                  primary: const Color.fromRGBO(
                                      226, 18, 33, 1.0)),
                              onPressed: ()  {


                                  Navigator.pushNamed(context, '/home');

                              },
                              child: const Text(
                                'Sign in',
                                style: TextStyle(
                                  fontSize: 14, color: Colors.white,

                                ),

                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Center(
                              child: Text('Forgot your password?',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(226, 18, 33, 1.0))),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Center(
                              child: Text('Or continue with',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blueGrey)),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Expanded(
                                  child: Image.asset(
                                    'assets/icon/facebook.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                                // SizedBox( width: 10),
                                Expanded(
                                  child: Image.asset(
                                    'assets/icon/google.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                                // SizedBox( width: 10),
                                Expanded(
                                  child: Image.asset(
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
            ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(80, 0, 80, 15),
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

