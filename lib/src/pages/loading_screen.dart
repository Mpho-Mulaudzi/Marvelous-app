import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:marvelous/src/features/start/presentation/getstarted.dart';
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
        child: Center(
          child: SplashScreen(
              seconds: 5,
              navigateAfterSeconds:GetStarted(),
                image: Image.asset('assets/logo.png'),
                photoSize: 75.0,
                loaderColor: Colors.red,
                useLoader: false,
          ),
        ),
      ),
      floatingActionButton: const Padding(
        padding: EdgeInsets.fromLTRB(25, 400,0, 20),
        child: SpinKitSpinningLines(color: Color.fromRGBO(226,18 , 33, 1.0),size:50),
      ),
      );

  }
}
