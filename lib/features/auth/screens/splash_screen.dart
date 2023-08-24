import 'dart:async';
import 'package:code_with_me/core/utils/app_colors.dart';
import 'package:code_with_me/core/utils/app_strings.dart';
import 'package:code_with_me/features/auth/screens/on_boarding_screen_1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
      const Duration(seconds: 5),
      () => Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoardingScreen1()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Text(AppStrings.bfcai,
          style: GoogleFonts.poppins(
            color: AppColors.white,
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
