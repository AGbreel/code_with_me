import 'package:code_with_me/core/utils/app_colors.dart';
import 'package:code_with_me/core/utils/app_strings.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool passwordVisible = false;
  @override
  void initState(){
    super.initState();
    passwordVisible = true;
  }

  List<String> itemsList = ['CS','IS','Ai','CSS'];
  String? selectedItem = 'CS';

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
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  prefixIcon: const Icon(Icons.person_outline,color: AppColors.textFieldColor,),
                  labelText: AppStrings.name,
                  labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: AppColors.textFieldColor),
                ),
              ),
            ),
            const SizedBox(height: 32,),
            SizedBox(
              height: 48,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  prefixIcon: const Icon(Icons.phone_outlined,color: AppColors.textFieldColor,),
                  labelText: AppStrings.phoneNumber,
                  labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: AppColors.textFieldColor),
                ),
              ),
            ),
            const SizedBox(height: 32,),
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
            const SizedBox(height: 32,),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: DropdownSearch<String>(
                dropdownButtonProps: const DropdownButtonProps(
                  icon: Icon(Icons.expand_more_outlined),
                  iconSize: 50,
                  color: AppColors.textFieldColor,
                  mouseCursor: MouseCursor.uncontrolled,
                  padding: EdgeInsets.all(1)
                ),
                items: itemsList,
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    hintText: AppStrings.department,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 33,),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                ),
                child: const Text(AppStrings.signUp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
