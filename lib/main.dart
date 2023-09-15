import 'package:flutter/material.dart';
import 'package:gym_app/Controller/home_controller.dart';
import 'package:gym_app/Controller/profile_controller.dart';
import 'package:gym_app/View/Home/home_page.dart';
import 'package:gym_app/View/Navigations/navigations.dart';
import 'package:gym_app/View/Profile/profile.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NavigationController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProfileController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home:  HomePage(),
      ),
    );
  }
}
