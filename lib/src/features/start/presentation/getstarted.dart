import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: GetStarted(),
    ));

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  //a variable that will be initialized later
  late Image _image;

  @override
  void initState() {
    super.initState();
    _image = Image.asset('assets/Demogorgon.jpg'
    );
  }

  @override
  void didChangeDependencies() {
    //precache image assets for faster loading images
    precacheImage(_image.image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background image
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: FittedBox(fit: BoxFit.cover, child: _image)),
      floatingActionButton: Column(
        children: const <Widget>[
          Padding(
              padding: EdgeInsets.fromLTRB(5, 435, 5, 0),
              child: Text(
                'Welcome to Marvelous',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.0,
                  fontSize: 26.0,
                ),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(60, 30, 60, 0),
            child: Text(
              'The No.1 movie streaming app in africa, to brighten your day',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Urbanist',
                wordSpacing: 3.0,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 25,5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            elevation: 20.0,
            primary: const Color.fromRGBO(226,18 , 33, 1.0)
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/continue');
          },
          child: const Text(
            'Get Started',
            style: TextStyle(fontSize: 14,
            color:  Colors.white),
          ),
        ),
      ),

    );
  }
}
