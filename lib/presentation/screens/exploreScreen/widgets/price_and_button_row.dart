import 'package:flutter/material.dart';
import 'package:test_app/core/models/product_model.dart';
import 'package:test_app/presentation/screens/exploreScreen/widgets/cart_button_widget.dart';
import 'package:test_app/presentation/screens/exploreScreen/widgets/product_price_widget.dart';

class PriceAndButtonRow extends StatelessWidget {
  const PriceAndButtonRow({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProductPriceWidget(price: product.price),
        const Spacer(),
        const CartButtonWidget(),
      ],
    );
  }
}
