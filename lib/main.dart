import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const CanteenFood());
}

class CanteenFood extends StatefulWidget {
  const CanteenFood({super.key});

  @override
  State<CanteenFood> createState() => _CanteenFoodState();
}

class _CanteenFoodState extends State<CanteenFood> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
