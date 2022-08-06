import 'package:flutter/material.dart';
import 'package:marvelous/src/common_widgets/loading_screen.dart';
import 'package:marvelous/src/features/start/presentation/getstarted.dart';
import 'package:marvelous/src/pages/profile.dart';
import 'package:marvelous/src/features/authenticate/presentation/lets_you_in.dart';
import 'package:marvelous/src/features/authenticate/presentation/signup.dart';
import 'package:marvelous/src/features/authenticate/presentation/signin.dart';
import 'package:marvelous/src/features/selection/choose_interest.dart';
import 'package:marvelous/src/pages/profile.dart';
void main() => runApp(MaterialApp(

  initialRoute: '/',
  routes: {
    '/': (context) => const LoadingScreen(),
    '/home' : (context) => const GetStarted(),
    '/continue': (context) => const LetsYouIn(),
    '/signup' : (context) => const SignUp(),
    '/login' : (context) => const SignIn(),
    '/interests' :(context) => const chooseInterestpage(),
    '/profile' : (context) => const profilepage()
  },

));



