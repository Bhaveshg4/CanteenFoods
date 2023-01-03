import 'package:flutter/material.dart';
import 'package:flutter_application_1/DrinksPages/teawhole/tea.dart';

class Tpayment extends StatelessWidget {
  const Tpayment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Tea()));
          },
          child: Text("Click"),
        ),
      ),
    ));
  }
}
