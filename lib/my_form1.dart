import 'package:flutter/material.dart';

class MyformOne extends StatefulWidget {
  const MyformOne({super.key});

  @override
  State<MyformOne> createState() => _MyformState();
}

class _MyformState extends State<MyformOne> {
  TextEditingController textEditingController = TextEditingController();
  int first = 0;
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
            InkWell(
              onTap: () {
                // print(textEditingController.text);
                // print(textEditingController1.text);
                first = int.parse(textEditingController.text);
                setState(() {
                  first = int.parse(textEditingController.text);
                  setState(() {
                    for (int i = 1; i < 10; i++) {
                      int result = first * i;
                      print("$first* $i:$result");
                    }
                  });
                });
              },
              child: Container(
                height: 40,
                width: 100,
                color: Colors.blue,
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                  left: 20,
                ),
                child: Text(
                  "Submit",
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
