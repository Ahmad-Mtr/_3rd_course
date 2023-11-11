import 'package:_3rd_course/config/app_routes.dart';
import 'package:_3rd_course/pages/editor_page.dart';
import 'package:_3rd_course/pages/home_page.dart';
import 'package:_3rd_course/pages/login_page.dart';
import 'package:_3rd_course/pages/main_page.dart';
import 'package:_3rd_course/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'styles/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}
