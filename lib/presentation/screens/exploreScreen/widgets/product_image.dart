import 'package:flutter/material.dart';
import 'package:test_app/presentation/globalWiidgets/app_image.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        height: 121,
        width: double.infinity,
        child: AppImage(
          image,
          fit: BoxFit.fitWidth,
          height: 121,
          width: double.infinity,
        ),
      ),
    );
  }
}
