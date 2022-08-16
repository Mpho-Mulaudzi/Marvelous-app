import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
        preferredSize: Size.fromHeight(300.0),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                   Text('Strange Things'
                   , style: TextStyle( fontSize: 26, color: Colors.white,fontWeight:FontWeight.bold)),
                   SizedBox(height:5),
                   Text('Action, Superhero, Mystery, Thriller...', style: TextStyle( fontSize: 12, color: Colors.white)),
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
        flexibleSpace:Image(
          height: 450,
          image: AssetImage(
            'assets/eleven.png'
          ),
          fit: BoxFit.cover,

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
          IconButton(
              onPressed: () => {},
           icon: const Icon(Icons.search),
           color: Colors.red,),
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.notifications),
            color: Colors.red,)


        ],
        backgroundColor: Colors.transparent,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0,0, 150, 400),
        child: Text(
          'Top 10 Movies of This Week',
           style:TextStyle( color:Colors.black, fontWeight: FontWeight.bold, fontSize: 16) ,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 60, 00, 60),
        child: Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(



                child:ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image(

                    image: AssetImage(
                      'assets/4.png'
                    ),
                  ),
                )

              ),
              SizedBox( width: 4),
              Container(



                child:  ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image(
                    image: AssetImage(
                        'assets/1.jpg'
                    ),
                  ),
                )
              ),
              SizedBox( width: 4),
              Container(



                child:  ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image(
                    image: AssetImage(
                        'assets/3.jpg'
                    ),
                  ),
                )
              ),
              SizedBox( width: 4),
              Container(
                child:  ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image(
                    image: AssetImage(
                        'assets/5.jpg'
                    ),
                  ),
                )
              ),
              SizedBox( width: 4),
              Container(
                  child:  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image(
                      image: AssetImage(
                          'assets/4.jpg'
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      )

    );
  }
}
