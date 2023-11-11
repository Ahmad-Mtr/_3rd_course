import 'package:_3rd_course/components/toolbar.dart';
import 'package:_3rd_course/config/app_routes.dart';
import 'package:_3rd_course/config/app_strings.dart';
import 'package:_3rd_course/styles/app_colors.dart';
import 'package:_3rd_course/styles/app_text.dart';
import 'package:flutter/material.dart';

enum ProfileMenu {
  edit,
  logout,
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.profile,
        actions: [
          PopupMenuButton<ProfileMenu>(
              onSelected: ((value) {
                switch (value) {
                  case ProfileMenu.edit:
                    Navigator.of(context).pushNamed(AppRoutes.editProfile);
                    break;
                  case ProfileMenu.logout:
                    print('Log out');
                    break;
                  default:
                }
              }),
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text('Edit'),
                    value: ProfileMenu.edit,
                  ),
                  PopupMenuItem(
                    child: Text('Log out'),
                    value: ProfileMenu.logout,
                  ),
                ];
              }),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              child: Image.asset(
                'assets/tmp/Levantine-guy.png',
                width: 90,
                height: 90,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Ahmad Karajah',
              style: AppText.header2,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Gaza',
              style: AppText.subtitle3,
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "472",
                      style: AppText.header2,
                    ),
                    Text(
                      'Follower',
                      style: AppText.subtitle3,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("119", style: AppText.header2),
                    Text(
                      'Posts',
                      style: AppText.subtitle3,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("860", style: AppText.header2),
                    Text(
                      'Following',
                      style: AppText.subtitle3,
                    )
                  ],
                ),
              ],
            ),
            Divider(
              height: 40,
              color: AppColors.disableFont,
            ),
            Text('data'),
          ],
        ),
      ),
    );
  }
}
