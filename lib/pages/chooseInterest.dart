import 'package:flutter/material.dart';

class chooseInterestpage extends StatefulWidget {
  const chooseInterestpage({Key? key}) : super(key: key);

  @override
  State<chooseInterestpage> createState() => _chooseInterestpageState();
}

class _chooseInterestpageState extends State<chooseInterestpage> {
  List<String> genres = [
    'Action',
    'Drama',
    'Comedy',
    'Romance',
    'Science',
    'Music',
    'Documentary',
    'Crime',
    'fantasy'
        'Mystery',
    'Fiction',
    'Animation',
    'War',
    'History',
    'Television',
    'Anime',
    'Sports',
    'K-drama'
  ];

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
            preferredSize: Size.fromHeight(40.0),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  'Choose your interests, and get the best movie recommendations. Dont worry you can always change later',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify),
            )),
      ),
      body: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        direction: Axis.horizontal,
        runSpacing: 10.0,
        children: genres.map((genre) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                elevation: 14.0,
                primary: const Color.fromRGBO(226, 18, 33, 1.0)),
            onPressed: () {
              Navigator.pushNamed(context, '/interests');
            },
            child: Text(
              genre,
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          );
        }).toList(),
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
                  Navigator.pushNamed(context, '/interests');
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(226, 18, 33, 1.0)),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 14.0,
                    primary: const Color.fromRGBO(226, 18, 33, 1.0)),
                onPressed: () {
                  Navigator.pushNamed(context, '/interests');
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
