import 'package:flutter/material.dart';
import 'package:gym_app/Constant/constants.dart';
import 'package:gym_app/Constant/text_from_field.dart';
import 'package:gym_app/Controller/profile_controller.dart';
import 'package:gym_app/View/Profile/Widgets/save_button.dart';
import 'package:gym_app/Constant/title_textstyle.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({super.key, required this.controller});
  final ProfileController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
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
              const TitleTextStyle(
                title: "Contact Person",
              ),
              IconButton(
                onPressed: () {
                  controller.isEditContactInfo();
                },
                icon: const Icon(
                  Icons.edit,
                  color: Colors.pinkAccent,
                ),
              )
            ],
          ),
          const IconAndName(
            icn: Icons.person,
            name: 'Shabanas pb',
          ),
          AppGaps.hGap10,
          const IconAndName(
            icn: Icons.phone,
            name: '+91-7025361943',
          ),
          AppGaps.hGap8,
          controller.isEditContact == true
              ? const Divider(
                  thickness: 2,
                )
              : const SizedBox(),
          controller.isEditContact == true
              ? const TitleTextStyle(
                  title: "GYM Contact",
                )
              : const SizedBox(),
          controller.isEditContact == true ? AppGaps.hGap10 : const SizedBox(),
          controller.isEditContact == true
              ? CustomTextFormField(
                  hintText: 'Contact Person Name',
                  // labelText: 'Tax Information Number',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                )
              : const SizedBox(),
          controller.isEditContact == true
              ? CustomTextFormField(
                  hintText: 'Contact Person Number',
                  textInputType: TextInputType.phone,
                  prefixIcon: Text("+91"),
                  // labelText: 'Tax Information Number',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                )
              : const SizedBox(),
          controller.isEditContact == true
              ? SaveButton(
                  onTap: () {},
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
