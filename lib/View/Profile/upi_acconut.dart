import 'package:flutter/material.dart';
import 'package:gym_app/Constant/text_from_field.dart';
import 'package:gym_app/View/Profile/Widgets/save_button.dart';

class UPIAccount extends StatelessWidget {
  const UPIAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: const Center(
          child: Text("Gym UPI Account"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            RichText(
              maxLines: 3,
              text: const TextSpan(
                text: 'Step ',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Merchant UPI ID ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'to receive payment from user',
                  ),
                ],
              ),
            ),
            CustomTextFormField(
              hintText: 'Payee Name',

              // labelText: 'Tax Information Number',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            CustomTextFormField(
              hintText: 'UPI ID',
              // suffixIcon: const Icon(Icons.qr_code_scanner_rounded),
              // labelText: 'Tax Information Number',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SaveButton(
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
