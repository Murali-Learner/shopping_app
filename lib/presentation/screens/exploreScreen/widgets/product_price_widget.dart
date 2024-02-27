import 'package:flutter/material.dart';
import 'package:test_app/core/utils/consts/consts.dart';

class ProductPriceWidget extends StatelessWidget {
  const ProductPriceWidget({
    super.key,
    required this.price,
  });

  final double price;

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$$price',
      style: const TextStyle(
        color: AppColors.black,
        fontSize: 18,
        fontFamily: AppFonts.gilroyRegular,
        fontWeight: FontWeight.w600,
        height: 0.06,
        letterSpacing: 0.10,
      ),
    );
  }
}
