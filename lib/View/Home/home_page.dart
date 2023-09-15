import 'package:flutter/material.dart';
import 'package:gym_app/Controller/home_controller.dart';
import 'package:gym_app/View/Diet.dart/diet.dart';
import 'package:gym_app/View/Home/Widgets/grid_view.dart';
import 'package:gym_app/View/Profile/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Gym"),
        ),
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          GridViewHomePage(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GymProfile(),
                ),
              );
            },
            title: 'Profile',
            icns: 'asset/lotties/animation_lleotffl.json',
            clr: const Color.fromARGB(255, 222, 236, 247),
          ),
          GridViewHomePage(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DietScreen(),
                ),
              );
            },
            title: 'Diet',
            icns: 'asset/lotties/animation_llep6yjz.json',
            clr: const Color.fromARGB(255, 242, 235, 216),
          ),
          GridViewHomePage(
            onTap: () {},
            title: 'WorkOut',
            icns: 'asset/lotties/animation_llepjrjj.json',
            clr: Colors.white,
          ),
        ],
      ),
    );
  }
}
