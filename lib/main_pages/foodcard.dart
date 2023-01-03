import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String Name;
  final String image;
  final Widget SnackPage;
  FoodCard({required this.Name, required this.image, required this.SnackPage});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9.0),
        child: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => SnackPage)),
          child: Container(
            width: 210,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 59.9,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(66, 116, 113, 113)),
                              child: Image.asset(image)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Container(
                  child: Text(Name),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
