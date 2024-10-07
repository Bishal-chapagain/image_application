import 'package:flutter/material.dart';

class Myform extends StatefulWidget {
  const Myform({super.key});

  @override
  State<Myform> createState() => _MyformState();
}

class _MyformState extends State<Myform> {
  TextEditingController textEditingController=TextEditingController();
  TextEditingController textEditingController1=TextEditingController();

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
            InkWell(
              onTap: (){
                // print(textEditingController.text);
                // print(textEditingController1.text);
              double firstNumber=  double.parse(textEditingController.text);
              double secondNumber=  double.parse(textEditingController1.text);
              double substract=firstNumber-secondNumber;
              print(substract);

              },
            
              child: Container(
                height: 20,
                width: 100,
                color: Colors.grey,
                child: Text(
                  "Substract",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
