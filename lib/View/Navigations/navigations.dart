// import 'package:flutter/material.dart';
// import 'package:gym_app/Controller/home_controller.dart';
// import 'package:gym_app/View/Diet.dart/diet.dart';
// import 'package:gym_app/View/Home/home_page.dart';
// import 'package:gym_app/View/Profile/profile.dart';
// import 'package:provider/provider.dart';

// class Navigations extends StatelessWidget {
//   const Navigations({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller =
//         Provider.of<NavigationController>(context, listen: false);
//     WidgetsBinding.instance.addPostFrameCallback(((timeStamp) {
//       controller.onInIt();
//     }));
//     return Scaffold(
//       body: Consumer<NavigationController>(builder: (context, value, _) {
//         return Stack(
//           children: [
//             SlideTransition(
//               position: value.navigatorProfileScreenAnimation!,
//               child: HomePage(controller: controller),
//             ),
//             SlideTransition(
//               position: controller.navigatorBackwordAnimation!,
//               child: GymProfile(
//                 onTap: () {
//                   controller.animate();
//                 },
//               ),
//             ),
//             SlideTransition(
//               position: value.navigatorDietPlanScreenAnimation!,
//               child: HomePage(controller: controller),
//             ),
//             SlideTransition(
//               position: controller.navigatorBackwordAnimation!,
//               child: DietScreen(
//                 onTap: () => controller.animate(),
//               ),
//             )
//           ],
//         );
//       }),
//     );
//   }
// }
