import'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


void main()=> runApp(MaterialApp( theme: ThemeData(primarySwatch:Colors.blue), home : MyApp()));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        centerTitle:true,// titlecenter maa leuxa
        title: Text("Shankar's CV APP")
      ),
      body: SingleChildScrollView(
              child: Column(  
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[ 
            Card( 
              elevation: 3.0,
              color:Colors.lightGreen,
              child: Padding( 
                padding:EdgeInsets.symmetric( 
                  horizontal:20.0, //card ko  tala mathi padding
                  vertical:30.0,
                ),
              child: Column(  //card vitra pani column xa so
                children:<Widget>[ 
                  CircleAvatar( 
                    backgroundImage: AssetImage("img/lampat.jpg"),
                    backgroundColor: Colors.red,
                    radius: 50.0,
                   ),
                   SizedBox( 
                     height:5.0,
                   ),
                    
                   Text("SHANKAR POKHREL",style: TextStyle( 
                     fontSize:25.0,
                     decoration: TextDecoration.underline
                   ),),
                   
                   Text("PHP Developer",style: TextStyle( 
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontSize:20.0,
                     decoration: TextDecoration.underline
                     
                    )),
                     SizedBox( 
                     height:7.0,
                   ),
                   Text("Hello i Am shankar pokhrel,PHP Developer.i am currently running Coders Nepal Youtube Channel where I make programming Tutorials, web Development Tutorials. ",style: TextStyle( fontSize: 15.0,
                   fontFamily: 'Sriracha'))

                ],
              ),
            ),
            ),
            Text("social Links",style: TextStyle( fontSize: 20.0,
            decoration: TextDecoration.underline),
            textAlign:TextAlign.center,
            ),
           
          
            
            Card(
              color: Colors.orangeAccent,

              elevation: 3.0,
                        child: Row( 
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: <Widget> [ 
                  IconButton( 
                    icon: Icon(FontAwesomeIcons.facebook),
                    onPressed: () {
                      launch("https://www.facebook.com/troublein.paradiez.9"); 
                    },
                    color: Colors.blue,
                  ),
                  IconButton( 
                    icon: Icon(FontAwesomeIcons.twitter),
                    onPressed: () {},
                    color: Colors.blue,
                  ),
                  IconButton( 
                    icon: Icon(FontAwesomeIcons.instagram),
                    onPressed: () {},
                    color: Colors.redAccent,
                  ),
                  IconButton( 
                    icon: Icon(FontAwesomeIcons.whatsapp),
                    onPressed: () {

                    },
                    color: Colors.red,
                    )
                        
                
            
                
                ]      
              ),
            ),
            Padding( 
              padding:EdgeInsets.only(
              top: 10.0,
            ),
           child: Text("Skills",style: TextStyle( fontSize: 20.0,
            decoration: TextDecoration.underline),
            textAlign:TextAlign.center,
            ),
            ),
            Card( 
              shadowColor: Colors.orange,
              elevation: 3.0,
              child: ListTile( 
                leading: CircleAvatar( 
                  radius: 30.0,
                  backgroundImage: AssetImage("img/js.jpg"),
                ),
                title: Text("Web Development"),
                subtitle: Text("HTML,CSS,Javascript,python"),
              ),
            ),
             Card( 
               shadowColor: Colors.orange,
              elevation: 3.0,
              child: ListTile( 
                leading: CircleAvatar( 
                  radius: 30.0,
                  backgroundImage: AssetImage("img/php.png"),
                ),
                title: Text("PHP development"),
                subtitle: Text("Django,laravel,wordpress"),
              ),
            ),
            SizedBox( 
              height:10.0,
            )
    
    


            

        



          ]

        ),
      )      
    );
  }
}