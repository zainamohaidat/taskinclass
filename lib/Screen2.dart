import 'package:flutter/material.dart';
import 'Screen1.dart';


class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    int index=0;
    Color z = Colors.white;
    String username=ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: z,

      appBar: AppBar(
        title: Text("Hi $username",style: TextStyle(fontSize: 30),),
      ),
      body: Column(
        children: [
          // Text("Hi $username",style: TextStyle(fontSize: 30),),
          // ElevatedButton(onPressed: (){
          //   Navigator.pushNamed(context , '/screen1' );
          // }, child:Icon(Icons.arrow_back) )

        ],
      ),

      bottomNavigationBar:
        BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Fav")
          ,
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person"),

        ],

        currentIndex: index ,
          onTap: (int i){
          setState(() {
            index=i;
            switch(index){
              case 0:
                {
                  z = Colors.red;
                  break;
                }
              case 1:
                {
                  z = Colors.white10;
                  break;
                }
            }

          });
          },
        ),
    );


  }
}
