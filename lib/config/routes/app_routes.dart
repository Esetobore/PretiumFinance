import 'package:flutter/material.dart';
import 'package:pretiumfinanceassessment/screens/auth/forgotten_password_screen.dart';
import 'package:pretiumfinanceassessment/screens/auth/login_screen.dart';
import 'package:pretiumfinanceassessment/screens/auth/sign_up_screen.dart';
import 'package:pretiumfinanceassessment/screens/onboarding/onboarding_screen.dart';
import 'package:pretiumfinanceassessment/screens/onboarding/splash_screen.dart';


class AppRoutes {
  static const String splashScreen = '/splash';
  static const String onboardingScreen = '/onboarding';
  static const String loginScreen = '/login';
  static const String signUpScreen = '/signup';
  static const String forgotPassword = '/forgot-password';


  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splashScreen: (context) => const SplashScreen(),
      onboardingScreen: (context) => const OnboardingScreen(),
      loginScreen: (context) => const LoginScreen(),
      signUpScreen: (context) => const SignupScreen(),
      forgotPassword: (context) => const ForgotPasswordScreen(),

  };
  }
}