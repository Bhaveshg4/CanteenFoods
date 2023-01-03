import 'package:flutter/material.dart';
import 'package:flutter_application_1/DrinksPages/frootiwhole/frooti.dart';

class Fpayment extends StatelessWidget {
  const Fpayment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Frooti()));
          },
          child: Text("Click"),
        ),
      ),
    ));
  }
}
