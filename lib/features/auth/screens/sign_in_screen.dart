import 'package:code_with_me/core/utils/app_colors.dart';
import 'package:code_with_me/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  bool passwordVisible = false;
  @override
  void initState(){
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(42.0),
        child: ListView(
          children: [
            const SizedBox(height: 1),
            SizedBox(
              height: 48,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  prefixIcon: const Icon(Icons.email_outlined),
                  labelText: AppStrings.email,
                  labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: AppColors.textFieldColor),
                ),
              ),
            ),
            const SizedBox(height: 32,),
            SizedBox(
              height: 48,
              child: TextFormField(
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                    icon: passwordVisible ? const Icon(Icons.visibility_off_outlined) : const Icon(Icons.visibility_outlined),
                  ),
                  labelText: AppStrings.password,
                  labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: AppColors.textFieldColor),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              children: [
                const Spacer(),
                Text(AppStrings.forgetPassword,style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,color: AppColors.textFieldColor),
                ),
              ],
            ),
            const SizedBox(height: 47,),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(AppStrings.signIn),
                style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
