import 'package:_3rd_course/components/app_text_field.dart';
import 'package:flutter/material.dart';

class PostingPage extends StatelessWidget {
  const PostingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppTextField(Hint: "Description"),
          AppTextField(Hint: "Location"),
        ],
      ),
    );
  }
}
