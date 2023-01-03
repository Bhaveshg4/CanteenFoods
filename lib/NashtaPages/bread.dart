import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';

class Bread extends StatelessWidget {
  const Bread({super.key});

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
            title: const Text("Nashta Center"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 35,
                    color: Colors.black26,
                    child: const Text(
                      "Bread Pakora",
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 240, 83, 62)),
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
                    child: Image.asset("asset/bread.png"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
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
