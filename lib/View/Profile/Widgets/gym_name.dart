import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gym_app/Constant/constants.dart';
import 'package:gym_app/Controller/profile_controller.dart';

class GymNameAndPhoto extends StatelessWidget {
  GymNameAndPhoto({
    super.key,
    required this.controller,
  });
  final ProfileController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: NetworkImage(
                    "https://i.ytimg.com/vi/HnoPHqrdXQ8/maxresdefault.jpg"),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2,
                )
              ],
            ),
            child: IconButton(
              onPressed: () {
                dialogBuilder(context, controller);
              },
              icon: const Icon(
                Icons.mode_edit_outline_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "FITNESS",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CircleAvatar(
                      radius: 15,
                      child: Icon(
                        Icons.qr_code_scanner_outlined,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "DE58336",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    Text(
                      "Aaaaaa,Thrissur,Kerala",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

dialogBuilder(BuildContext context, ProfileController controller) {
  File? selectedImage;
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Change Image'),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                controller.pickImageCamera(selectedImage);
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[400],
                child: Icon(
                  Icons.camera_alt,
                  size: 30,
                  color: Colors.grey[200],
                ),
              ),
            ),
            AppGaps.wGap10,
            GestureDetector(
              onTap: () {
                controller.pickImage(selectedImage);
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[400],
                child: Icon(
                  Icons.photo_library_outlined,
                  size: 30,
                  color: Colors.grey[200],
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Upload'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
