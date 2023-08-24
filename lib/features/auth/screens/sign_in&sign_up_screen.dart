import 'package:code_with_me/core/utils/app_colors.dart';
import 'package:code_with_me/core/utils/app_images.dart';
import 'package:code_with_me/core/utils/app_strings.dart';
import 'package:code_with_me/features/auth/screens/sign_in_screen.dart';
import 'package:code_with_me/features/auth/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn_SignUp extends StatelessWidget {
  const SignIn_SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          toolbarHeight: 230,
          backgroundColor: AppColors.white,
          elevation: 0,
          title: SizedBox(height:230,width: 340,child: Image.asset(AppImages.imgPath1,fit: BoxFit.fill,)),
          bottom: TabBar(
            indicatorColor: AppColors.primaryColor,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 35),
            indicatorWeight: 5,
            tabs: [
              Tab(child: Text(AppStrings.signIn,
                  style: GoogleFonts.poppins(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold
                  ),
                ),),
              Tab(child: Text(AppStrings.signUp,
                  style: GoogleFonts.poppins(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold
                  ),
                ),),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SignInScreen(),
            SignUpScreen(),
          ],
        ),
      ),
    );
  }
}
