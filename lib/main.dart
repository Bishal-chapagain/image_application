// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:image_application/my_form1.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyformOne());
  }
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 300,
        color: Colors.grey,
        width: 500,
        child:  Column(
          children: [
          //   SizedBox(
          //  height:100,
          //  width: 500,
          //   ),
          // Image.asset("images/bishal.jpeg",height: 100,width:500,),
          Image.network("https://api.trishaheed.edu.np/storage/students/JlUGxVLJvz8MDMbrNONDn6EHVgIblqrkjMHAhMkf.jpg",height:100,width:500),          
            Text(
              "Bishal chapagain",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              " Student,Grade 10",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize:15,
                color: Colors.orange,
                fontWeight: FontWeight.w100,
              ),
            ),
              Text(
              " What makes this school special is the sense of community. The teachers are genuinely invested in our success, and the environment is supportive, both academically and emotionally. I feel prepared for the future because of the values and skills I’ve learned here.",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w200,
              ),
         ), ],
        ),
      ),
      
    ]);
  }
}
