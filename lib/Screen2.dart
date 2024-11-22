import 'package:flutter/material.dart';
import 'Screen1.dart';


class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int index=0;//هون التعديل الي صار
  Color z = Colors.white;
  @override
  Widget build(BuildContext context) {
    // int index=0;
    // Color z = Colors.white;
    String username=ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(

      backgroundColor: z,

      appBar: AppBar(
        title: Text("Hi $username",style: TextStyle(fontSize: 30),),
      ),

       body:

       // Row(
       //   children: [
       //     Expanded(
       //       child: ElevatedButton(
       //         onPressed: (){},child: Icon(Icons.add),
       //       ),
       //     ),
       //     Text('نص الزر'),
       //   ],
       // )

    Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 40,),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(

                    color: Colors.grey.shade100
                ),
                child: IconButton(
                  icon: Icon(Icons.hotel,size: 40,color: Colors.green,),
                  onPressed: () {
                    Navigator.pushNamed(context, '/screen3');
                  },
                ),

              ),
              Text('HOTELS',style: TextStyle(fontSize: 15),),
            ],
          ),
        SizedBox(width: 20,),
          // Text('HOTELS',style: TextStyle(fontSize: 15),),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade100
                ),
                child: IconButton(
                  icon: Icon(Icons.flight,size: 40,color: Colors.pink.shade100,),
                  onPressed: () {

                  },
                ),
              ),
              Text('FLIGHTS',style: TextStyle(fontSize: 15),),

            ],
          ),
      SizedBox(width: 20,),
      // Text('HOTELS',style: TextStyle(fontSize: 15),),
      Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade100
            ),
            child: IconButton(
              icon: Icon(Icons.fastfood,size: 40,color: Colors.pink.shade100,),
              onPressed: () {
                // ...
              },
            ),
          ),
          Text('FOODS',style: TextStyle(fontSize: 15),),
    ],
    ),
      SizedBox(width: 20,),
      // Text('HOTELS',style: TextStyle(fontSize: 15),),
      Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade100
            ),
            child: IconButton(
              icon: Icon(Icons.event,size: 40,color: Colors.pink.shade100,),
              onPressed: () {
                // ...
              },
            ),
          ),
          Text('EVENTS',style: TextStyle(fontSize: 15),),
          ],)

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
                  print('Index: $index, Color: $z');
                  break;
                }
              case 1:
                {
                  z = Colors.white10;
                  break;
                }
              case 2:
                z = Colors.pinkAccent;
                break;
            }
          });
          },
        ),

    );
  }
}
