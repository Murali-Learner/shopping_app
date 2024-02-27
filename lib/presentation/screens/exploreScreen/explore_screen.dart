import 'package:flutter/material.dart';
import 'package:test_app/core/repo/products_list.dart';
import 'package:test_app/core/utils/consts/consts.dart';
import 'package:test_app/core/utils/styling/app_measurements.dart';
import 'package:test_app/core/utils/styling/spacing_widgets.dart';
import 'package:test_app/presentation/globalWiidgets/app_image.dart';
import 'package:test_app/presentation/screens/exploreScreen/widgets/explore_search_widget.dart';
import 'package:test_app/presentation/screens/exploreScreen/widgets/product_card.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  late final TextEditingController _searchTed;
  @override
  void initState() {
    super.initState();
    _searchTed = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PrimaryScrollController(
        controller: ScrollController(),
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: AppMeasures.defaultPadding,
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    Row(
                      children: [
                        ExploreSearchWidget(searchTed: _searchTed),
                        Spacing.w16,
                        const AppImage(AssetConsts.filter,
                            height: 20, width: 20)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: AppMeasures.defaultPadding,
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 5,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ProductCard(product: items[index]);
                  },
                  childCount: items.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
