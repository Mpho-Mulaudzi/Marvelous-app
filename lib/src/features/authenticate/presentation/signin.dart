import 'package:flutter/material.dart';

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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 40, 12, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/logo.png',
                  height: 100,
                  width: 150,
                ),
                const SizedBox(
                  height: 15,
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
                  height: 15,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextFormField(
                        style:
                            const TextStyle(fontSize: 15, ),
                            decoration: const InputDecoration(
                           //align hint text and icons
                              contentPadding: EdgeInsets.symmetric(vertical: 15),
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
                        obscureText: _isObscure,
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 15),

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
                        height: 15,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            elevation: 0.0,
                            primary: const Color.fromRGBO(226, 18, 33, 1.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/interests');
                        },
                        child: const Text(
                          'Sign in',
                          style: TextStyle(fontSize: 14, color: Colors.white,

                          ),

                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Center(
                        child: Text('Forgot your password?',
                            style: TextStyle(
                                fontSize: 12, color:  Color.fromRGBO(226, 18, 33, 1.0))),
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
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(60, 0, 60, 13),
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
        ));
  }
}
