import 'package:flutter/material.dart';
import 'package:test_app/core/models/product_model.dart';
import 'package:test_app/core/utils/consts/consts.dart';
import 'package:test_app/core/utils/styling/spacing_widgets.dart';
import 'package:test_app/presentation/screens/exploreScreen/widgets/price_and_button_row.dart';
import 'package:test_app/presentation/screens/exploreScreen/widgets/product_image.dart';
import 'package:test_app/presentation/screens/exploreScreen/widgets/product_name_widget.dart';
import 'package:test_app/presentation/screens/exploreScreen/widgets/product_qty_widget.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({required this.product, super.key});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: AppColors.divider),
          borderRadius: BorderRadius.circular(18),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x00000000),
            blurRadius: 12,
            offset: Offset(0, 6),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          ProductImageWidget(image: product.image),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacing.h18,
                  ProductNameWidget(name: product.name),
                  Spacing.h18,
                  ProductQtyWidget(qty: product.quantity),
                  const Spacer(),
                  PriceAndButtonRow(product: product),
                  Spacing.h20,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
