import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssszo/presentation/managers/asset_manager.dart';
import 'package:ssszo/presentation/view/categories_screen.dart';
import 'package:ssszo/presentation/widgets/custom_image_widget.dart';
import 'package:ssszo/presentation/widgets/custom_widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    preProcessing();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(child: customAssetImage(AssetManager.splashLogo)),
      ),
    );
  }

  preProcessing() async {
    Future.delayed(Duration(seconds: 2), () => Get.off(CategoriesScreen()));
  }
}
