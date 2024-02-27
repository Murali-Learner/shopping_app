import 'package:flutter/material.dart';
import 'package:test_app/core/repo/profile_options_list.dart';
import 'package:test_app/core/utils/consts/consts.dart';
import 'package:test_app/core/utils/styling/app_measurements.dart';
import 'package:test_app/core/utils/styling/spacing_widgets.dart';
import 'package:test_app/presentation/screens/profileScreen/widgets/profile_image.dart';
import 'package:test_app/presentation/screens/profileScreen/widgets/profile_option.dart';
import 'package:test_app/presentation/screens/profileScreen/widgets/user_details.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppMeasures.pageHorizantalMargin,
                vertical: AppMeasures.pageVerticalMargin,
              ),
              child: Row(
                children: [
                  const ProfileImage(),
                  Spacing.w20,
                  const UserDetailsWidget(),
                ],
              ),
            ),
            Spacing.h24,
            Column(
              children: List.generate(
                optionsList.length,
                (index) => ProfileOption(
                    icon: optionsList[index].icon,
                    name: optionsList[index].name),
              ),
            ),
            Divider(
              color: AppColors.divider,
              height: AppMeasures.dividerHeight,
              thickness: AppMeasures.dividerThickness,
            ),
          ],
        ),
      ),
    );
  }
}
