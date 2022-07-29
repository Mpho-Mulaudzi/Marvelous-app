import 'package:flutter/material.dart';
import 'package:marvelous/pages/loadingScreen.dart';
import 'package:marvelous/pages/getStarted.dart';
import 'package:marvelous/pages/signup.dart';
import 'package:marvelous/pages/createAccount.dart';
void main() => runApp(MaterialApp(

  initialRoute: '/',
  routes: {
    '/': (context) => const LoadingScreen(),
    '/home' : (context) => GetStarted(),
    '/signup': (context) => Signup(),
    '/create' : (context) => createAccountpage()
  },

));



