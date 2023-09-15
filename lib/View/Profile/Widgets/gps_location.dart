import 'package:flutter/material.dart';
import 'package:gym_app/Constant/constants.dart';
import 'package:gym_app/Constant/title_textstyle.dart';

class GpsLocation extends StatelessWidget {
  const GpsLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: const [
          Icon(
            Icons.location_on,
            color: Colors.pinkAccent,
          ),
          AppGaps.wGap10,
          TitleTextStyle(
            title: "GPS Location",
          ),
        ],
      ),
    );
  }
}
