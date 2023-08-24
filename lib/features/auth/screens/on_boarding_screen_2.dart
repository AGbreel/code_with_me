import 'package:code_with_me/core/utils/app_colors.dart';
import 'package:code_with_me/core/utils/app_images.dart';
import 'package:code_with_me/core/utils/app_strings.dart';
import 'package:code_with_me/features/auth/screens/on_boarding_screen_3.dart';
import 'package:code_with_me/features/auth/screens/sign_in&sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn_SignUp()));
                  },
                  child: Text(
                    AppStrings.skip,
                    style: GoogleFonts.poppins(
                        fontSize: 16, color: AppColors.secondaryColor),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 63,
            ),
            SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(AppImages.imgPath4)),
            const SizedBox(
              height: 48,
            ),
            Text(
              AppStrings.titleOnBoardingScreen2,
              style: GoogleFonts.poppins(fontSize: 24, color: AppColors.black,fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              AppStrings.subTitleOnBoardingScreen2,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 17, color: AppColors.secondaryColor),
            ),
            const Spacer(),
            Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor),
                    child: const Icon(Icons.arrow_back_sharp,color: AppColors.white),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 60,
                  width: 125,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoardingScreen3()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(AppStrings.next,
                          style: GoogleFonts.poppins(color: AppColors.white),
                        ),
                        const SizedBox(width: 8,),
                        const Icon(Icons.arrow_forward,color: AppColors.white),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
