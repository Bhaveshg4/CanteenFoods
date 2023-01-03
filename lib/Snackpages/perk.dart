import 'package:flutter/material.dart';

import '../homepage.dart';

class Perk extends StatelessWidget {
  const Perk({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 121, 120, 118),
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            title: Text("Snacks Center"),
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
                      "Perk",
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
                    child: Image.asset("asset/perk.jpg"),
                  ),
                ),
                const Padding(
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
