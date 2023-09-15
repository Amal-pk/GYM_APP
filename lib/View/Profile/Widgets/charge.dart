import 'package:flutter/material.dart';
import 'package:gym_app/Constant/constants.dart';
import 'package:gym_app/Constant/text_from_field.dart';
import 'package:gym_app/Controller/profile_controller.dart';
import 'package:gym_app/View/Profile/Widgets/save_button.dart';
import 'package:gym_app/Constant/title_textstyle.dart';

class ChargeDetails extends StatelessWidget {
  const ChargeDetails({super.key, required this.controller});
  final ProfileController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TitleTextStyle(title: "GYM Charge"),
              IconButton(
                onPressed: () {
                  controller.isEditChargeInfo();
                },
                icon: const Icon(
                  Icons.edit,
                  color: Colors.pinkAccent,
                ),
              ),
            ],
          ),
          RichText(
            text: const TextSpan(
              text: 'Register Charge:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' ₹1000',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          AppGaps.hGap10,
          RichText(
            text: const TextSpan(
              text: 'Re-Register Charge:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' ₹0',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          AppGaps.hGap10,
          controller.isEditCharge == true
              ? const Divider(
                  thickness: 2,
                )
              : const SizedBox(),
          controller.isEditCharge
              ? CustomTextFormField(
                  hintText: 'Register Charge',
                  prefixIcon: const Text('₹'),
                  // labelText: 'Tax Information Number',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                )
              : const SizedBox(),
          controller.isEditCharge == true
              ? SaveButton(
                  onTap: () {},
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
