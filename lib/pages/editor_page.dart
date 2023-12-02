import 'package:_3rd_course/components/app_text_field.dart';
import 'package:_3rd_course/components/toolbar.dart';
import 'package:_3rd_course/components/user_avatar.dart';
import 'package:_3rd_course/config/app_strings.dart';
import 'package:_3rd_course/styles/app_colors.dart';
import 'package:_3rd_course/styles/app_text.dart';
import 'package:flutter/material.dart';

enum Gender { none, male, female, other }

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.edit),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: UserAvatar(
                      size: 120,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: Icon(
                            Icons.edit,
                            size: 20,
                            color: Colors.black,
                          )))
                ],
              ),
              SizedBox(
                height: 60,
              ),
              AppTextField(Hint: AppStrings.firstName),
              SizedBox(
                height: 16,
              ),
              AppTextField(Hint: AppStrings.lastName),
              SizedBox(
                height: 16,
              ),
              AppTextField(Hint: AppStrings.phoneNumber),
              SizedBox(
                height: 16,
              ),
              AppTextField(Hint: AppStrings.location),
              SizedBox(
                height: 16,
              ),
              AppTextField(Hint: AppStrings.birthday),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                decoration: BoxDecoration(
                  color: AppColors.fieldColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.gender,
                      style: AppText.body1.copyWith(fontSize: 12),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                              title: Text(AppStrings.male),
                              visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity),
                              value: Gender.male,
                              contentPadding: EdgeInsets.zero,
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = Gender.male;
                                });
                              }),
                        ),
                        Expanded(
                          child: RadioListTile(
                              title: Text(AppStrings.female),
                              visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity),
                              value: Gender.female,
                              contentPadding: EdgeInsets.zero,
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = Gender.female;
                                });
                              }),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
