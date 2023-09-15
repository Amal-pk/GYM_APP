import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:gym_app/View/Diet.dart/Details/details.dart';
import 'package:gym_app/View/Diet.dart/Widget/diet_container.dart';

class DietScreen extends StatelessWidget {
  const DietScreen({
    super.key,
  });

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
          child: Text("Diet"),
        ),
        actions: const [
          Icon(
            Icons.download,
            color: Colors.transparent,
          )
        ],
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
            child: const DietContainer(
              foodImage:
                  "https://post.healthline.com/wp-content/uploads/2020/09/vegetarian-diet-plan-732x549-thumbnail.jpg",
              vegOrNonVeg: true,
              title: "Clear Eating Diet",
            ),
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        overlayColor: Colors.white,
        overlayOpacity: 0.1,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Create New',
            onTap: () {},
          ),
          SpeedDialChild(
            child: const Icon(Icons.sticky_note_2_outlined),
            label: 'Get From Template',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
