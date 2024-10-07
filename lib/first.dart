import 'package:flutter/material.dart';

class MyApps extends StatefulWidget {
  const MyApps({super.key});

  @override
  State<MyApps> createState() => _MyAppsState();
}
class _MyAppsState extends State<MyApps> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 300,
          color:Colors.grey,

        )
      ],
    );
  }
}