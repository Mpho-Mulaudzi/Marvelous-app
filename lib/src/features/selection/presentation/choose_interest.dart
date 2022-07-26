import 'package:flutter/material.dart';
import 'package:marvelous/src/features/selection/data/data.dart';

class chooseInterestpage extends StatefulWidget {
  const chooseInterestpage({Key? key}) : super(key: key);

  @override
  State<chooseInterestpage> createState() => _chooseInterestpageState();
}

class _chooseInterestpageState extends State<chooseInterestpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Choose Your interest',
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 1.0,
          ),
          textAlign: TextAlign.start,
        ),
        centerTitle: false,
        backgroundColor: Color.fromRGBO(255, 250, 250, 1.0),
        elevation: 0.0,
        //remove shadow
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(35, 15, 35, 15),
              child: Text(
                  'Choose your interests, and get the best movie recommendations. Dont worry you can always change later',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify),
            )),
      ),
      body: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        direction: Axis.horizontal,
        spacing: 40.0,
        children: genres.map((genre) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                elevation: 0.0,
                primary: const Color.fromRGBO(226, 18, 33, 1.0)),
            onPressed: () {
              Navigator.pushNamed(context, '/interests');
            },
            child: Text(
              genre,
              style: const TextStyle(fontSize: 12, color: Colors.white),
            ),
          );
        }).toList(),
        
      ),
      floatingActionButton: Image(
         image: AssetImage('assets/Checking_boxes.png')
         ,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 0.0,
                    primary: const Color.fromRGBO(255, 200, 200, 1.0)),
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(226, 18, 33, 1.0)),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 0.0,
                    primary: const Color.fromRGBO(226, 18, 33, 1.0)),
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
