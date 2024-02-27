import 'package:flutter/material.dart';
import 'package:test_app/core/utils/consts/consts.dart';

class ProductQtyWidget extends StatelessWidget {
  const ProductQtyWidget({
    super.key,
    required this.qty,
  });

  final int qty;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 82.15,
      child: Text(
        '\$$qty, Price',
        style: const TextStyle(
          color: AppColors.grey,
          fontSize: 15,
          fontFamily: AppFonts.gilroyMedium,
          fontWeight: FontWeight.w400,
          height: 0.09,
        ),
      ),
    );
  }
}
