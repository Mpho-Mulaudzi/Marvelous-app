import 'package:flutter/material.dart';
import 'package:marvelous/pages/loadingScreen.dart';
import 'package:marvelous/pages/getStarted.dart';
import 'package:marvelous/pages/profile.dart';
import 'package:marvelous/pages/signup.dart';
import 'package:marvelous/pages/createAccount.dart';
import 'package:marvelous/pages/signin.dart';
import 'package:marvelous/pages/chooseInterest.dart';
import 'package:marvelous/pages/profile.dart';
void main() => runApp(MaterialApp(

  initialRoute: '/',
  routes: {
    '/': (context) => const LoadingScreen(),
    '/home' : (context) => const GetStarted(),
    '/signup': (context) => const Signup(),
    '/create' : (context) => const createAccountpage(),
    '/login' : (context) => const signinPage(),
    '/interests' :(context) => const chooseInterestpage(),
    '/profile' : (context) => const profilepage()
  },

));



