import 'package:flutter/material.dart';
import 'package:flutter_application_1/DrinksPages/applewhoole/apple.dart';
import 'package:flutter_application_1/DrinksPages/frootiwhole/frooti.dart';

class Apayment extends StatelessWidget {
  const Apayment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Apple()));
          },
          child: Text("Click"),
        ),
      ),
    ));
  }
}
