import 'package:flutter/material.dart';
import 'package:flutter_application_1/DrinksPages/coffeewhole/coffee.dart';

class Cpayment extends StatelessWidget {
  const Cpayment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Coffee()));
          },
          child: Text("Click"),
        ),
      ),
    ));
  }
}
