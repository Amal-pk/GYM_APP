import 'package:flutter/material.dart';
import 'package:gym_app/Constant/constants.dart';
import 'package:gym_app/Constant/title_textstyle.dart';
import 'package:gym_app/Controller/profile_controller.dart';
import 'package:gym_app/View/Profile/upi_acconut.dart';

class UPI extends StatelessWidget {
  const UPI({super.key, required this.controller});
  final ProfileController controller;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const UPIAccount(),
          ),
        );
      },
      child: Container(
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
              Icons.account_balance,
              color: Colors.pinkAccent,
            ),
            AppGaps.wGap10,
            TitleTextStyle(
              title: "GYM UPI Account",
            ),
          ],
        ),
      ),
    );
  }
}
