import 'package:flutter/material.dart';
import 'package:test_app/core/utils/consts/consts.dart';

class ProductNameWidget extends StatelessWidget {
  const ProductNameWidget({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Text(
        name,
        overflow: TextOverflow.visible,
        style: const TextStyle(
          color: AppColors.black,
          fontSize: 18,
          fontFamily: AppFonts.gilroyBold,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
