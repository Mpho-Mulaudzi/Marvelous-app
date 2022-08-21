import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(300.0),
                child: Padding(
                  padding: const EdgeInsets.all(45.0),
                  child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Strange Things'
                            , style: TextStyle( fontSize: 22, color: Colors.white,fontWeight:FontWeight.bold)),
                        SizedBox(height:5),
                        Text('Action, Superhero, Mystery, Thriller...', style: TextStyle( fontSize: 10, color: Colors.white)),
                         Row(
                            children: <Widget>[
                              ElevatedButton.icon(
                                  icon:Icon(
                                      Icons.play_arrow
                                  ),



                                  style: ElevatedButton.styleFrom(
                                      shape: const StadiumBorder(),
                                      elevation: 0.0,
                                      primary: const Color.fromRGBO(226, 18, 33, 1.0)
                                  ),
                                  onPressed: (){},
                                  label:Text(
                                      'Play',
                                      style: TextStyle( color: Colors.white)

                                  )
                              ),

                              SizedBox( width: 10),
                              OutlinedButton.icon(
                                  icon:Icon(
                                      Icons.add,
                                      color: Colors.white
                                  ),

                                  style: OutlinedButton.styleFrom(
                                      shape: const StadiumBorder(

                                      ),

                                      primary: Colors.transparent,
                                      shadowColor: Colors.white,
                                      side: BorderSide(color: Colors.white, width: 2)

                                  ),
                                  onPressed: (){},
                                  label:Text(
                                      'My List',
                                      style: TextStyle( color: Colors.white)


                                  ))
                            ],
                          ),

                      ]
                  ),
                )

            ),
            flexibleSpace:Padding(
              padding: const EdgeInsets.fromLTRB(17, 35, 17, 35),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  height: 420,
                  width: 450,
                  image: AssetImage(
                      'assets/eleven.png'
                  ),
                  fit: BoxFit.cover,

                ),
              ),
            ),
            title: Image(
              image: AssetImage(
                  'assets/logo.png'
              ),
              height: 30,
              width: 30,
            ),
            actions: [
              // Navigate to the Search Screen
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: IconButton(
                  onPressed: () => {},
                  icon: const Icon(Icons.search),
                  color: Colors.red,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                child: IconButton(
                  onPressed: () => {},
                  icon: const Icon(Icons.notifications),
                  color: Colors.red,),
              )


            ],
            backgroundColor: Colors.transparent,
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.fromLTRB(0,0, 150, 380),
            child: Text(
              'Top 10 Movies of This Week',
              style:TextStyle( color:Colors.black, fontWeight: FontWeight.bold, fontSize: 16) ,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(15,25, 15, 25),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                      child: Flexible(
                        child : Row(
                          children: <Widget>[
                            Container(
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/6.jpg'
                                    ),
                                  ),
                                )
                            ),
                            SizedBox( width: 20),
                            Container(

                                child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/4.png'
                                    ),
                                  ),
                                )
                            ),
                            SizedBox( width: 20),
                            Container(
                                child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/7.jpg'
                                    ),
                                  ),
                                )
                            ),
                            SizedBox( width: 20),
                            Container(



                                child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/1.jpg'
                                    ),
                                  ),
                                )
                            ),
                            SizedBox( width: 20),
                            Container(



                                child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/3.jpg'
                                    ),
                                  ),
                                )
                            ),
                            SizedBox( width: 20),
                            Container(
                                child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/5.jpg'
                                    ),
                                  ),
                                )
                            ),
                            SizedBox( width: 20),
                            Container(
                                child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/4.jpg'
                                    ),
                                  ),
                                )
                            ),
                          ],
                        )
                      )
                    ),
                  ),
           SizedBox(height: 50),
                  Container(
                    height: 200,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child:  Flexible(
                        child : Row(
                          children: <Widget>[
                            Container(
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/9.jpg'
                                    ),
                                  ),
                                )
                            ),
                            SizedBox( width: 20),
                            Container(

                                child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/10.jpg'
                                    ),
                                  ),
                                )
                            ),
                            SizedBox( width: 20),
                            Container(
                                child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/11.jpg'
                                    ),
                                  ),
                                )
                            ),
                            SizedBox( width: 20),
                           
                            Container(



                                child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/image1.jpg'
                                    ),
                                  ),
                                )
                            ),
                            SizedBox( width: 20),
                            Container(
                                child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/image3.jpg'
                                    ),
                                  ),
                                )
                            ),
                            SizedBox( width: 20),
                            Container(
                                child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/image2.jpg'
                                    ),
                                  ),
                                )
                            ),
                          ],
                        )
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Card(
              child: Flexible(
                child: Row(
                  children: [
                    IconButton(onPressed: () {},
                        autofocus: true,
                        icon: const Icon(
                            Icons.home_rounded)),
                    SizedBox(width: 30),
                    IconButton(onPressed: () {},
                        icon: Icon(
                            Icons.explore)),
                    SizedBox(width: 30),
                    IconButton(onPressed: () {},
                      icon: Icon(
                          Icons.list),
                    ),
                    SizedBox(width: 30),
                    IconButton(onPressed: () {},
                        icon: Icon(
                            Icons.cloud_download)),
                    SizedBox(width: 30
                    ),
                    IconButton(onPressed: () {},
                        icon: Icon(
                            Icons.person)),

                  ],
                ),
              ),
            ),
          ),

    );
  }
}
