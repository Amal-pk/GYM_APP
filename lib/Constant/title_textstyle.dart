import 'package:flutter/material.dart';
import 'package:gym_app/Constant/constants.dart';

class TitleTextStyle extends StatelessWidget {
  const TitleTextStyle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.pinkAccent,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    );
  }
}

class IconAndName extends StatelessWidget {
  const IconAndName({
    super.key,
    required this.icn,
    required this.name,
  });
  final IconData icn;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icn),
        AppGaps.wGap10,
        Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
