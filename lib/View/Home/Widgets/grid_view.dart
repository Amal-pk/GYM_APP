import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GridViewHomePage extends StatelessWidget {
  const GridViewHomePage({
    super.key,
    required this.onTap,
    required this.title,
    required this.icns, required this.clr,
  });
  final Function() onTap;
  final String title;
  final String icns;
  final Color clr;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
            ),
          ],
        ),
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(icns, height: 150),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
