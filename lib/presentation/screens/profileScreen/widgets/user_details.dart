import 'package:flutter/material.dart';
import 'package:test_app/core/utils/consts/consts.dart';
import 'package:test_app/core/utils/styling/spacing_widgets.dart';
import 'package:test_app/presentation/globalWiidgets/app_image.dart';

class UserDetailsWidget extends StatelessWidget {
  const UserDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              'Afsar Hossen',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 20,
                fontFamily: AppFonts.gilroyBold,
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacing.w6,
            GestureDetector(
              onTap: () {},
              child: AppImage(AssetConsts.profileConsts.editProfile,
                  height: 20, width: 20),
            ),
          ],
        ),
        Spacing.h4,
        const Text(
          'Imshuvo97@gmail.com',
          style: TextStyle(
            color: AppColors.grey,
            fontSize: 16,
            fontFamily: AppFonts.gilroyRegular,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
