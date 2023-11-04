import 'package:_3rd_course/components/toolbar.dart';
import 'package:_3rd_course/styles/app_colors.dart';
import 'package:_3rd_course/styles/app_text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Image.asset(
              'assets/tmp/Levantine-guy.png',
              width: 90,
              height: 90,
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
