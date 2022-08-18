import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        padding: const EdgeInsets.fromLTRB(0,0, 150, 400),
        child: Text(
          'Top 10 Movies of This Week',
           style:TextStyle( color:Colors.black, fontWeight: FontWeight.bold, fontSize: 16) ,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(13, 60, 13, 60),
        child: Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(10),
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
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage(
                        'assets/6.jpg'
                    ),
                  ),
                )
              ),
              SizedBox( width: 4),
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
              SizedBox( width: 4),
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
              SizedBox( width: 4),
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
              SizedBox( width: 4),
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
              SizedBox( width: 4),
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
          ),
        ),
      )

    );
  }
}
