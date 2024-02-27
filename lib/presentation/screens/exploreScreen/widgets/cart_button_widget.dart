import 'package:flutter/material.dart';
import 'package:test_app/core/utils/consts/consts.dart';
import 'package:test_app/presentation/globalWiidgets/app_image.dart';

class CartButtonWidget extends StatelessWidget {
  const CartButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.67,
      height: 45.67,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: AppColors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17),
        ),
      ),
      child: const AppImage(AssetConsts.add, height: 12, width: 12),
    );
  }
}
