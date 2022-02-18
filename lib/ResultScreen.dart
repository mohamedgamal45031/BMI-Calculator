import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
   final int age;
   final int result;
   final bool isMale;

  const ResultScreen({required this.result, required this.age, required this.isMale});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_sharp), onPressed: () {
          Navigator.pop(context);
        },),
        title: Text(
            "BMI Result"
        ),
      ),
      body:
      Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image(height :360.0,image:  isMale ? AssetImage('assets/images/giphy.gif') :AssetImage('assets/images/giphy1.gif' ),),
          Text("Gender: ${isMale? "Male":"Female"}",style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          SizedBox(height: 10.0,),
          Text("Result: $result",style:TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
            SizedBox(height: 10.0,),
          Text("Age: $age",style:TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
        ],),
      ),

    );
  }
}
