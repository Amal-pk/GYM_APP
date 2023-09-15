import 'package:flutter/material.dart';
import 'package:gym_app/Constant/title_textstyle.dart';
import 'package:gym_app/Controller/profile_controller.dart';

class GPS extends StatelessWidget {
  const GPS({super.key, required this.controller});
  final ProfileController controller;
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleTextStyle(
            title: "GPS Attendance",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "QR code scan works only at GYM location",
                style: TextStyle(
                  // fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Switch(
                value: controller.isGPS,
                activeColor: Colors.pinkAccent,
                onChanged: (bool value) {
                  controller.gpsCheck();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
