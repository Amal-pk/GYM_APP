import 'package:flutter/material.dart';
import 'package:gym_app/Constant/constants.dart';
import 'package:gym_app/Constant/title_textstyle.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      // height: 250,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          TitleTextStyle(
            title: "GYM Admin",
          ),
          AppGaps.hGap10,
          IconAndName(
            icn: Icons.person,
            name: 'Shabanas Pb',
          ),
          AppGaps.hGap10,
          IconAndName(
            icn: Icons.phone,
            name: '+91-7025361943',
          ),
          AppGaps.hGap10,
          IconAndName(
            icn: Icons.email_outlined,
            name: 'Shabanas@gmail.com',
          ),
          AppGaps.hGap8
        ],
      ),
    );
  }
}
