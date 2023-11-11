import 'package:_3rd_course/config/app_icons.dart';
import 'package:_3rd_course/pages/home_page.dart';
import 'package:_3rd_course/pages/profile_page.dart';
import 'package:_3rd_course/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icHome),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icFavorite), label: 'Favorite'),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icAdd),
            label: 'Add Post',
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icMessage), label: 'Messages'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icUser), label: 'User'),
        ],
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColors.primary,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('Fav'),
    ),
    Center(
      child: Text('Add Post'),
    ),
    Center(
      child: Text('Comment'),
    ),
    ProfilePage()
  ];
}
