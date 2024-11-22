// import 'package:flutter/material.dart';
// class Screen3 extends StatefulWidget {
//   const Screen3({super.key});
//
//   @override
//   State<Screen3> createState() => _Screen3State();
// }
//
// class _Screen3State extends State<Screen3> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body:
//       Scaffold(
//         body: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage('https://images.unsplash.com/photo-1517840901100-8179e982acb7?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWx8ZW58MHx8MHx8fDA%3D'),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child:Center(
//            child:
//               Column(
//                 children: [
//                   SizedBox(height: 20,),
//                   ElevatedButton(onPressed: (){}, child: Icon(Icons.keyboard_arrow_left_outlined)),
//                   SizedBox(height: 100,),
//                   Text("Hotel Booking",style: TextStyle(color: Colors.white, fontSize: 40),)
//                 ],
//               )
//
//           )
//         ),
//       )
//
//
//     );
//   }
// }
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1517840901100-8179e982acb7?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWx8ZW58MHx8MHx8fDA%3D'
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Text and other content (optional)

            Positioned(
              top: 20.0, // Adjust top padding as needed
              left: 20.0, // Adjust left padding as needed
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                    Navigator.pushNamed(context,'/screen2');
                    },
                    child: Icon(Icons.keyboard_arrow_left_outlined),
                  ),
                  SizedBox(height: 30,),
                  Text("Hotel Booking",style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(height: 200,),
                  ElevatedButton(onPressed: (){
                    showModalBottomSheet(context: context, builder: (context)=>Column(
                      children: [
                        SizedBox(height: 20,),
                        listTittleFun(txt: "distination", icon:Icons.location_city),
                        SizedBox(height: 20,),
                        listTittleFun(txt: "select date", icon:Icons.date_range),
                        SizedBox(height: 20,),
                        listTittleFun(txt: "Guests", icon:Icons.person),
                      ],
                    ));
                  }, child: Text("Search"))
                ],
              ),
            ),
            // Positioned(child: FloatingActionButton(onPressed: (){
            //   showModalBottomSheet(context: context, builder:(context)=>Column(
            //     children: [
            //       SizedBox(height: 20,),
            //
            //     ],
            //   ));
            // },child: Icon(Icons.add),)
            // )
          ],
        ),
      ),

      
    );
  }
  Widget listTittleFun({required String txt,required IconData icon}){
    return ListTile(
      title: Text(txt),
      leading: Icon(icon),
    );
  }
}