import 'package:flutter/material.dart';
import 'package:pretiumfinanceassessment/config/routes/app_routes.dart';
import 'package:pretiumfinanceassessment/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pretium Finance",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.primaryTheme,
      initialRoute: AppRoutes.splashScreen,
      routes: AppRoutes.getRoutes(),
    );
  }
}