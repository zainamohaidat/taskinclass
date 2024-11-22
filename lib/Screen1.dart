import 'package:flutter/material.dart';
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final userName="zaina";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Image.network("https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg"),
              SizedBox(height: 20,),
              Text("Welcome to our hotel"),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
              Navigator.pushNamed(context ,arguments: userName, '/screen2' );
              }, child:
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue, // لون الخلفية
                ),
                child: Icon(Icons.arrow_forward, color: Colors.white), // لون الأيقونة
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
