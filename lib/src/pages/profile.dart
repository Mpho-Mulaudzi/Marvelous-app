import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class profilepage extends StatelessWidget {

  const profilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(
                title: const Text('Fill Your Profile', style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 3.0,
                ),
                  textAlign: TextAlign.start,),
                centerTitle: false,
                backgroundColor: const Color.fromRGBO(255, 250, 250, 1.0),
                elevation: 0.0,
                bottom:  PreferredSize(
                  preferredSize: Size.fromHeight(100.0),
                  child: Stack(
                    children:[ const CircleAvatar(
                       backgroundImage: AssetImage('assets/icon/icon.png'),
                      backgroundColor: Colors.white70,
                      radius:50,
                    ),
                     Positioned(
                       bottom : 0,
                       left : 60,
                       child: IconButton(onPressed: (){},
                           icon: Icon(
                             color: Colors.red[800],
                             Icons.edit,
                             size: 25,
                           )),
                     )
                    ]),

                ),

              ),
            body: Padding(
              padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
              child: Column(
                children: [
                  TextFormField(
                    style : const TextStyle( fontSize: 15),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        hintText: 'Full Name',
                        ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextFormField(
                    style : const TextStyle( fontSize: 15),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        hintText: 'Nickname',
                        ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextFormField(
                    style : const TextStyle( fontSize: 15),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        hintText: 'Email',
                        suffixIcon: Icon(Icons.email,size: 20)),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextFormField(
                    style : const TextStyle( fontSize: 15),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        hintText: 'Phone Number',
                        prefixIcon: Icon(Icons.arrow_drop_down,size: 20)),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextFormField(
                    style : const TextStyle( fontSize: 15),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        hintText: 'Gender',
                        suffixIcon: Icon(Icons.arrow_drop_down,size: 20)),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                  ),


                ],
              ),
            ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
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


