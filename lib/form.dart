import 'package:flutter/material.dart';

class Myform extends StatefulWidget {
  const Myform({super.key});

  @override
  State<Myform> createState() => _MyformState();
}

class _MyformState extends State<Myform> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController1 = TextEditingController();
  double first = 0;
  double second = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: textEditingController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text("Enter the first number"),
                hintText: "write your first number number",
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: textEditingController1,
              decoration: InputDecoration(
                label: Text("Enter your second number"),
                hintText: "write your second number",
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    // print(textEditingController.text);
                    // print(textEditingController1.text);
                    first = double.parse(textEditingController.text);
                    second = double.parse(textEditingController1.text);
                    setState(() {
                     result = first - second;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    color: Colors.blue,
                     margin: EdgeInsets.only(top: 20, bottom: 20,left:20,),
                    child: Text(
                      "Substract",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // print(textEditingController.text);
                    // print(textEditingController1.text);
                    first = double.parse(textEditingController.text);
                    second = double.parse(textEditingController1.text);
                    setState(() {
                     result = first + second;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    color: Colors.blue,
                     margin: EdgeInsets.only(top: 20, bottom: 20,left:20,),
                    child: Text(
                      "addition",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // print(textEditingController.text);
                    // print(textEditingController1.text);
                    first = double.parse(textEditingController.text);
                    second = double.parse(textEditingController1.text);
                    setState(() {
                      result = first * second;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    color: Colors.blue,
                     margin: EdgeInsets.only(top: 20, bottom: 20,left:20,),
                    child: Text(
                      "multiply",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // print(textEditingController.text);
                    // print(textEditingController1.text);
                    first = double.parse(textEditingController.text);
                    second = double.parse(textEditingController1.text);
                    setState(() {
                      result= first/second;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    color: Colors.blue,
                     margin: EdgeInsets.only(top: 20, bottom: 20,left:20,),
                    child: Text(
                      "division",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 40,
              width: 400,
              color: Colors.white,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 20, bottom: 20,left:20,),
              child: Text(
                "The result is :$result",
                textAlign: TextAlign.center,
              ),
            ),
             Container(
              height: 40,
              width: 400,
              color: Colors.white,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(top: 20, bottom: 20,left:20,),
              child: Text(
                "Thanks for visiting",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
