import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:marvelous/pages/getStarted.dart';
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  //const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}




class _LoadingScreenState extends State<LoadingScreen> {



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SplashScreen(
          seconds: 8,
          navigateAfterSeconds:GetStarted(),
            image: Image.asset('assets/logo.png'),
            photoSize: 65.0,
            loaderColor: Colors.red,
            useLoader: false,
      ),
      floatingActionButton: const Padding(
        padding: EdgeInsets.fromLTRB(25, 250,0, 0),
        child: SpinKitSpinningLines(color: Colors.red,size:50),
      ),
      );

  }
}
