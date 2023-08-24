import 'package:code_with_me/core/utils/app_colors.dart';
import 'package:code_with_me/core/utils/app_images.dart';
import 'package:code_with_me/core/utils/app_strings.dart';
import 'package:code_with_me/features/auth/screens/sign_in&sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen3 extends StatelessWidget {
  const OnBoardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 63,),
            SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(AppImages.imgPath3)),
            const SizedBox(height: 48,),
            Text(
              AppStrings.titleOnBoardingScreen3,
              style: GoogleFonts.poppins(fontSize: 24, color: AppColors.black,fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4,),
            Text(
              AppStrings.subTitleOnBoardingScreen3,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 17, color: AppColors.secondaryColor),
            ),
            const Spacer(),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn_SignUp()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor),
                child: Text(AppStrings.start,
                  style: GoogleFonts.poppins(color: AppColors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
