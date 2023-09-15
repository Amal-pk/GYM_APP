import 'package:flutter/material.dart';
import 'package:gym_app/Constant/constants.dart';
import 'package:gym_app/Constant/text_from_field.dart';
import 'package:gym_app/Controller/profile_controller.dart';
import 'package:gym_app/View/Profile/Widgets/save_button.dart';
import 'package:gym_app/Constant/title_textstyle.dart';
import 'package:provider/provider.dart';

class TaxContainers extends StatelessWidget {
  const TaxContainers({
    super.key,
    required this.clr,
    required this.controller,
  });
  final Color clr;
  final ProfileController controller;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: const EdgeInsets.all(10),
      // height: 250,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: clr,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
          )
        ],
      ),
      duration: const Duration(milliseconds: 500),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TitleTextStyle(
                title: 'Tax Settings',
              ),
              IconButton(
                onPressed: () {
                  controller.isEditTaxInfo();
                },
                icon: const Icon(
                  Icons.edit,
                  color: Colors.pinkAccent,
                ),
              ),
            ],
          ),
          const Text(
            "Currency ₹",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          AppGaps.hGap8,
          const Text(
            "Tax Identification Number",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          AppGaps.hGap25,
          const Text(
            "Tax Billing is Disable",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          controller.isEditTax == true
              ? SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppGaps.hGap25,
                      CustomTextFormField(
                        hintText: 'Tax Information Number',
                        // labelText: 'Tax Information Number',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      const Text(
                        "Ex GST,VAT or Sales Tax",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      CheckboxListTile(
                        title: const Text("Enable Tax Billing"),
                        value: controller.checkedValue,
                        onChanged: (value) {
                          controller.ischeckedValue();
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                      controller.checkedValue == true
                          ? CustomTextFormField(
                              hintText: 'Tax Name',
                              // labelText: 'Tax Information Number',
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            )
                          : const SizedBox(),
                      controller.checkedValue == true
                          ? const Text(
                              "Ex GST,VAT or Sales Tax",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          : const SizedBox(),
                      controller.checkedValue == true
                          ? AppGaps.hGap10
                          : const SizedBox(),
                      controller.checkedValue == true
                          ? CustomTextFormField(
                              hintText: 'Tax Rate',
                              suffixIcon: const Icon(Icons.percent),
                              // labelText: 'Tax Information Number',
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            )
                          : const SizedBox(),
                      SaveButton(
                        onTap: () {},
                      )
                    ],
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
