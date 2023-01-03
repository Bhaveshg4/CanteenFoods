import 'package:flutter/material.dart';
import 'package:flutter_application_1/DrinksPages/frootiwhole/frootipayment.dart';
import 'package:slide_to_act/slide_to_act.dart';
import '../../homepage.dart';

class Frooti extends StatelessWidget {
  const Frooti({super.key});

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
          title: Text("Drinks Center"),
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
                    "Frooti",
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
                  child: Image.asset("asset/frooti.jpg"),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 243, 205, 91)),
                  child: Text(
                    "Price: 10/- each",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 240, 218),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter quantity required",
                        labelText: "Quantity",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),

              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 241, 240, 218),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 90,
                    // ignore: prefer_const_constructors
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter room no.",
                          labelText: "Room No.",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SlideAction(
                  elevation: 0,
                  text: "Slide to pay",
                  innerColor: Color.fromARGB(255, 238, 201, 89),
                  outerColor: Color.fromARGB(255, 120, 122, 243),
                  sliderButtonIcon: const Icon(Icons.attach_money),
                  borderRadius: 15,
                  onSubmit: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Fpayment()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
