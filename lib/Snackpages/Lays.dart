import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../homepage.dart';

class Lays extends StatelessWidget {
  const Lays({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 121, 120, 118),
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            title: Text("Snack Center"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 35,
                    color: Colors.black26,
                    child: const Text(
                      "Lays",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 73, 236, 108)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),

                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("asset/chips.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
