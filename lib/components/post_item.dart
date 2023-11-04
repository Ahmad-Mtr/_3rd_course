import 'package:_3rd_course/styles/app_text.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key, required this.user});
  final String user;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/tmp/Levantine-guy.png',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user,
                    style: AppText.subtitle3,
                  ),
                  Text(
                    '30 mins ago',
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset(
            'assets/tmp/c1.png',
          ),
          Text(
            'Lorem ipsum batatat kartoffel potatoes ich bin Ahmad',
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
