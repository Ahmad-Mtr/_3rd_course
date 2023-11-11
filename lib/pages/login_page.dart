import 'package:_3rd_course/components/app_text_field.dart';
import 'package:_3rd_course/config/app_icons.dart';
import 'package:_3rd_course/config/app_routes.dart';
import 'package:_3rd_course/config/app_strings.dart';
import 'package:_3rd_course/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../styles/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text(
                  'هذا افضل تطبيق بالحياةّّّ!!',
                  style: GoogleFonts.arefRuqaa(
                      color: AppColors.info, fontSize: 40),
                ),
                SizedBox(
                  height: 64,
                  width: 225,
                  child: Column(
                    children: [
                      //Image.asset(),

                      Text(
                        AppStrings.helloWelcome,
                        style: TextStyle(
                            color: AppColors.font,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        AppStrings.loginToContinue,
                        style: TextStyle(
                            color: AppColors.font,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                AppTextField(Hint: AppStrings.username),
                SizedBox(
                  height: 16,
                ),
                AppTextField(Hint: "Password"),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.white,
                    ),
                    child: Text(
                      AppStrings.forgotPassword,
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: AppColors.primary),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(AppRoutes.main);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        backgroundColor: AppColors.primary,
                      ),
                      child: Text(
                        AppStrings.login,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )),
                ),
                Spacer(),
                Text(
                  AppStrings.orSignInWith,
                  style: TextStyle(color: AppColors.font),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppIcons.icGoogle,
                        width: 22,
                        height: 22,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(AppStrings.loginWithGoogle),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.info,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppIcons.icFacebook,
                        width: 22,
                        height: 22,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(AppStrings.loginWithFacebook),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.dontHaveAccount,
                      style: TextStyle(color: AppColors.font),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        AppStrings.signup,
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: AppColors.primary),
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
