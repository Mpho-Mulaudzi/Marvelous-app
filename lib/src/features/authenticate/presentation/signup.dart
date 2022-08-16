import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:marvelous/src/services/auth.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignUp extends StatefulWidget {
  const  SignUp ({Key? key}) : super(key: key);

  @override
  State< SignUp > createState() => _SignUpState();
}

class _SignUpState  extends State<SignUp> {
  String _pwd = "";
  String _mail = "";
  User? _user;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(65),
                  child: const Image(
                    image: AssetImage(
                    'assets/Buddies.png',
                  ),
                    height: 380,
                    width: 380,
                )
                ),
                const SizedBox(
                  height: 2,
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
                      TextField(
                        style : const TextStyle( fontSize: 12),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 17),
                            hintText: 'Email',
                        prefixIcon: Icon(Icons.email,size: 20)),
                        onChanged: (value) {
                          setState(() {
                            _mail = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: _isObscure,
                        style : const TextStyle( fontSize: 12 ),
                        decoration: InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(vertical: 17),
                            prefixIcon: const Icon(Icons.lock, size:20),
                            suffixIcon: IconButton(
                                icon: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                })),
                        onChanged: (value) {
                          setState(() {
                            _pwd = value;
                          });
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
                        onPressed: ()  {

                          Navigator.pushNamed(context, '/interests');

                         },


                        child: const Text(
                          'Sign up',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const Center(
                        child: Text('Or continue with',
                            style: TextStyle(fontSize: 16, color: Colors.blueGrey)),
                      ),
                      const SizedBox(
                        height: 35,
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
      ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(80, 0, 80, 15),
          child: Row(
            children: [
              const Text("Already have an account?"),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  " Sign in",
                  style: TextStyle(color: Color.fromRGBO(226, 18, 33, 1.0)),
                ),
              ),
            ],
          ),
        )


    );
  }
}
