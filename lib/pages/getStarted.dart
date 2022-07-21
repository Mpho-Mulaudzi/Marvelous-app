import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home:GetStarted(),
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
    _image = Image.asset("assets/Max.jpg");
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
          child: FittedBox(
              fit: BoxFit.cover,
              child: _image
          )
      ),

        floatingActionButton: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0,80, 0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape:const StadiumBorder(),
              elevation: 14.0,
              primary: const Color.fromRGBO(226, 18, 33, 1.0),
            ),
            onPressed: () {},
            child: const Text(
              'Get Started',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
    );
  }
}
