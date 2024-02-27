import 'package:flutter/material.dart';
import 'package:test_app/core/utils/consts/consts.dart';
import 'package:test_app/presentation/globalWiidgets/app_image.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(70),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(70),
          child: AppImage(
            AssetConsts.profileConsts.proflePic,
            height: 70,
            width: 70,
            fit: BoxFit.fill,
          )),
    );
  }
}
