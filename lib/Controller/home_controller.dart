import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class NavigationController with ChangeNotifier implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }

  final Duration duration = const Duration(seconds: 1);
  late final AnimationController controller;
  late final animation = CurvedAnimation(
    parent: controller,
    curve: Curves.fastLinearToSlowEaseIn,
  );
  late Animation<Offset>? navigatorProfileScreenAnimation;
  late Animation<Offset>? navigatorBackwordAnimation;
  late Animation<Offset>? navigatorDietPlanScreenAnimation;

  onInIt() {
    controller = AnimationController(
      vsync: this,
      duration: duration,
    );
    navigatorProfileScreenAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-1.0, 0.0),
    ).animate(animation);
    navigatorDietPlanScreenAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-1.0, 0.0),
    ).animate(animation);
    navigatorBackwordAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(animation);
    notifyListeners();
  }

  animate() {
    if (navigatorProfileScreenAnimation!.status != AnimationStatus.completed) {
      controller.forward();
    } else if (navigatorDietPlanScreenAnimation!.status !=
        AnimationStatus.completed) {
      controller.forward();
    } else {
      controller.animateBack(0, duration: duration);
    }
    notifyListeners();
  }
}
