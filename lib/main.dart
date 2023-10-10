import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssszo/presentation/view/splash_screen.dart';
import 'package:ssszo/presentation/widgets/custom_widgets.dart';

import 'presentation/managers/colors_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: ColorManager.progress_indicator_color),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
