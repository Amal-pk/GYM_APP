import 'package:flutter/material.dart';
import 'package:gym_app/Constant/constants.dart';
import 'package:gym_app/Controller/profile_controller.dart';
import 'package:gym_app/View/Profile/Widgets/admin.dart';
import 'package:gym_app/View/Profile/Widgets/biometric_container.dart';
import 'package:gym_app/View/Profile/Widgets/charge.dart';
import 'package:gym_app/View/Profile/Widgets/contact.dart';
import 'package:gym_app/View/Profile/Widgets/gps_attendance.dart';
import 'package:gym_app/View/Profile/Widgets/gps_location.dart';
import 'package:gym_app/View/Profile/Widgets/gym_name.dart';
import 'package:gym_app/View/Profile/Widgets/tax.dart';
import 'package:gym_app/View/Profile/Widgets/upi.dart';
import 'package:provider/provider.dart';

class GymProfile extends StatelessWidget {
  const GymProfile({
    super.key,
  });
  // final Function() onTap;
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ProfileController>(context);
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          // leadingWidth: 10,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
            ),
          ),
          title: const Center(
            child: Text("Gym Profile"),
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            GymNameAndPhoto(
              controller: controller,
            ),
            const BiometricContainer(),
            AnimatedContainer(
              alignment: Alignment.centerRight,
              curve: Curves.fastOutSlowIn,
              duration: const Duration(milliseconds: 500),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SessionContainer(
                          title: ' Tax ',
                          isSelect: controller.isTax,
                          controller: controller,
                        ),
                        SessionContainer(
                          title: 'Admin',
                          isSelect: controller.isAdmin,
                          controller: controller,
                        ),
                        SessionContainer(
                          title: 'Contact',
                          isSelect: controller.isContact,
                          controller: controller,
                        ),
                        SessionContainer(
                          title: 'Charge',
                          isSelect: controller.isCharge,
                          controller: controller,
                        ),
                      ],
                    ),
                  ),
                  controller.isTax == true
                      ? TaxContainers(
                          clr: Colors.white,
                          controller: controller,
                        )
                      : const SizedBox(),
                  controller.isAdmin == true ? const Admin() : const SizedBox(),
                  controller.isCharge == true
                      ? ChargeDetails(
                          controller: controller,
                        )
                      : const SizedBox(),
                  controller.isContact == true
                      ? ContactDetails(
                          controller: controller,
                        )
                      : const SizedBox(),
                ],
              ),
            ),
            AppGaps.hGap10,
            GPS(
              controller: controller,
            ),
            AppGaps.hGap10,
            AppGaps.hGap8,
            UPI(controller: controller),
            AppGaps.hGap10,
            AppGaps.hGap8,
            const GpsLocation(),
            AppGaps.hGap10,
          ],
        ),
      ),
    );
  }
}

class SessionContainer extends StatelessWidget {
  const SessionContainer({
    super.key,
    required this.title,
    required this.isSelect,
    required this.controller,
  });
  final ProfileController controller;
  final String title;
  final bool isSelect;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.isSelect(title);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: isSelect == true ? Colors.deepPurple : Colors.white,
              blurRadius: 2,
            ),
          ],
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelect == true ? Colors.deepPurple : Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
