import 'package:flutter/material.dart';

class DietContainer extends StatelessWidget {
  const DietContainer({
    super.key,
    required this.foodImage,
    required this.vegOrNonVeg,
    required this.title,
  });
  final String foodImage;
  final bool vegOrNonVeg;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(foodImage),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 30,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 244, 69, 69).withOpacity(.8),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                ),
              ),
              child: Text(
                vegOrNonVeg == true ? "Vegetable" : "Non-Vegetarian",
                style: TextStyle(
                  color: const Color.fromARGB(255, 246, 248, 246).withOpacity(.8),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.centerLeft,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 181, 193, 181).withOpacity(.8),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: const Color.fromARGB(255, 43, 44, 43).withOpacity(.8),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
