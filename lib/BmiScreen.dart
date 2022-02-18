import 'dart:math';

import 'package:bmi_calculator/ResultScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 120.0;
  int weight = 40;
  int age = 20;
  Color ActiveColor =Color(0xFF1d1E33);
  Color bottomColor =Color(0xFFEB1555);
  Color primaryColor = Color(0xFF0A0E21);
  Color scaffoldBackgroundColor= Color(0xFF0A0E21);
  Color thumbColor= Color(0xFFEB1555);
  Color overlayColor= Color(0x29EB1555);
  Color label = Color(0xFF8D8E98);

  Color kActiveCardColour = Color(0xFF1D1E33);
  Color kInactiveCardColour = Color(0xFF111328);
  Color kBottomContainerColour = Color(0xFFEB1555);


  //var result =  weight / pow(height/100,2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: scaffoldBackgroundColor,
        title: Center(
          child: Text(
            "BMI Calculator",
          ),
        ),
      ),
      body: Container(
        color: primaryColor,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: isMale ? kActiveCardColour : kInactiveCardColour),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    color: Colors.white,
                                    height: 100.0,
                                    width: 100.0,
                                    image:
                                        AssetImage("assets/images/male.png")),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  "MALE",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    //fontWeight: FontWeight.bold,
                                    color:Color(0xFF8D8E98)
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: isMale ? kInactiveCardColour : kActiveCardColour),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    color: Colors.white,
                                    height: 100.0,
                                    width: 100.0,
                                    image:
                                        AssetImage("assets/images/female.png")),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  "FEMALE",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    //fontWeight: FontWeight.bold,
                                    color:Color(0xFF8D8E98)
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: kActiveCardColour,
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                          fontSize: 25.0,
                          //fontWeight: FontWeight.bold,
                          color:Color(0xFF8D8E98)
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${height.round()}",
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                                color:Colors.white
                            ),
                          ),
                          Text(
                            "CM",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                      Slider(
                          activeColor: thumbColor,
                          inactiveColor: overlayColor,
                          value: height,
                          min: 80.0,
                          max: 220.0,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                            print(value.round());
                          }),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: kActiveCardColour),
                          child: Column(
                            children: [
                              Text(
                                "AGE",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  //fontWeight: FontWeight.bold,
                                  color:Color(0xFF8D8E98)
                                ),
                              ),
                              Text(
                                "$age",
                                style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      backgroundColor: kBottomContainerColour,
                                      heroTag: "age+",
                                      mini: true,
                                      child: Icon(Icons.add),
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      }),
                                  FloatingActionButton(
                                      backgroundColor: kBottomContainerColour,
                                      heroTag: "age-",
                                      mini: true,
                                      child: Icon(Icons.remove),
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      }),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: kActiveCardColour),
                          child: Column(
                            children: [
                              Text(
                                "WEIGHT",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  //fontWeight: FontWeight.bold,
                                    color:Color(0xFF8D8E98)
                                ),
                              ),
                              Text(
                                "$weight",
                                style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,

                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      backgroundColor: kBottomContainerColour,
                                      heroTag: "weight+",
                                      mini: true,
                                      child: Icon(Icons.add),
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      }),
                                  FloatingActionButton(
                                      backgroundColor: kBottomContainerColour,
                                      heroTag: "weight+",
                                      mini: true,
                                      child: Icon(Icons.remove),
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      }),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: bottomColor,
              child: MaterialButton(
                height: 50.0,
                onPressed: () {
                  double result = weight / pow(height / 100, 2);
                  print(result.round());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(age:age,result:result.round(),isMale:isMale,),
                    ),
                  );
                },
                child: Text(
                  "CALCULATE",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
