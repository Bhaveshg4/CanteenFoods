import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/DrinksPages/applewhoole/apple.dart';
import 'package:flutter_application_1/DrinksPages/coffeewhole/coffee.dart';
import 'package:flutter_application_1/DrinksPages/frootiwhole/frooti.dart';
import 'package:flutter_application_1/DrinksPages/teawhole/tea.dart';
import 'package:flutter_application_1/NashtaPages/bread.dart';
import 'package:flutter_application_1/NashtaPages/maggie.dart';
import 'package:flutter_application_1/NashtaPages/poha.dart';
import 'package:flutter_application_1/NashtaPages/samosa.dart';
import 'package:flutter_application_1/Snackpages/Chocos.dart';
import 'package:flutter_application_1/Snackpages/Lays.dart';
import 'package:flutter_application_1/Snackpages/chivda.dart';
import 'package:flutter_application_1/Snackpages/perk.dart';
import 'package:flutter_application_1/main_pages/drinks.dart';
import 'package:flutter_application_1/main_pages/nashta.dart';

import 'main_pages/foodcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List foodYou = [
    ["Lays", "asset/chips.jpg"],
    ["Chocos", "asset/chocos.jpg"],
    ["Haldiram chivda", "asset/chivda.png"],
    ["Perk", "asset/perk.jpg"],
  ];
  final List NashtaYou = [
    ["Maggie", "asset/maggie.jpg"],
    ["Samosa", "asset/samosa.jpg"],
    ["Bread Pakoda", "asset/bread.png"],
    ["Poha", "asset/poha.jpg"],
  ];
  final List Drinks = [
    ["Coffee", "asset/coffee.jpg"],
    ["Tea", "asset/tea.jpg"],
    ["Frootie", "asset/frooti.jpg"],
    ["Appie Fiz", "asset/apple.jpg"],
  ];
  final List navigatorlist = [
    [Maggie()],
    [Samosa()],
    [Bread()],
    [Poha()],
  ];
  final List Snacknavigatorlist = [
    [Lays()],
    [Chocos()],
    [Chivda()],
    [Perk()],
  ];
  final List Drinksnavigatorlist = [
    [Coffee()],
    [Tea()],
    [Frooti()],
    [Apple()],
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 117, 121, 119),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "CanteenFoods",
            style: TextStyle(color: Color.fromARGB(255, 14, 13, 13)),
          ),
          elevation: 0,
        ),
        drawer: const Drawer(
          backgroundColor: Colors.black,
          elevation: 0,
          child: UserAccountsDrawerHeader(
            accountName: Text("Developer: Bhavesh Gupta"),
            accountEmail: Text(
              "Email: iambhaveshgupta@gmail.com",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 10,
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: const Text(
                  "Go on! Order something😋",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Freshly cooked food🍔"),
                height: 50,
                //width: 600,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 247, 156, 53)),
              ),
              const SizedBox(
                height: 23,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Snacks menu 😇:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 160,
                child: ListView.builder(
                    itemCount: foodYou.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return FoodCard(
                          SnackPage: Snacknavigatorlist[index][0],
                          Name: foodYou[index][0],
                          image: foodYou[index][1]);
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Nashta menu 😇:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 160,
                child: ListView.builder(
                    itemCount: NashtaYou.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return NashtaCard(
                          navigator: navigatorlist[index][0],
                          Name: NashtaYou[index][0],
                          image: NashtaYou[index][1]);
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Drinks menu 😇:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 160,
                child: ListView.builder(
                    itemCount: Drinks.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return DrinksCard(
                          drinkpagenav: Drinksnavigatorlist[index][0],
                          Name: Drinks[index][0],
                          image: Drinks[index][1]);
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
