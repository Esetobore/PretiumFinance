import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pretiumfinanceassessment/config/constants/assets_paths.dart';
import 'package:pretiumfinanceassessment/config/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) Navigator.pushNamedAndRemoveUntil(context,AppRoutes.onboardingScreen, (route) => false);
    },);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Image.asset(AssetPaths.logo, width: 200, height: 200),
      ),
    );
  }
}
