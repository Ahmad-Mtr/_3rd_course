import 'package:_3rd_course/components/post_item.dart';
import 'package:_3rd_course/components/toolbar.dart';
import 'package:_3rd_course/styles/app_colors.dart';
import 'package:_3rd_course/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersfromServer();
    return Scaffold(
      appBar: Toolbar(
        title: '5minFlutter',
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/svg/ic_location.svg'),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 24,
          );
        },
        itemCount: users.length,
      ),
    );
  }

  mockUsersfromServer() {
    for (var i = 0; i < 100; i++) {
      users.add('User nummer $i');
    }
  }
}
