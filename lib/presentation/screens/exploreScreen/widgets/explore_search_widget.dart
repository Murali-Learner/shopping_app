import 'package:flutter/material.dart';
import 'package:test_app/core/utils/consts/consts.dart';
import 'package:test_app/core/utils/styling/app_measurements.dart';
import 'package:test_app/presentation/globalWiidgets/app_image.dart';

class ExploreSearchWidget extends StatelessWidget {
  const ExploreSearchWidget({
    super.key,
    required TextEditingController searchTed,
  }) : _searchTed = searchTed;

  final TextEditingController _searchTed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 45,
      width: AppMeasures.pageWidth(context) * 0.8,
      child: TextField(
        keyboardType: TextInputType.name,
        controller: _searchTed,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
          filled: true,
          fillColor: AppColors.lightGrey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Container(
            padding: const EdgeInsets.all(13),
            child: const AppImage(AssetConsts.search, height: 10, width: 10),
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              _searchTed.clear();
            },
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: AppImage(AssetConsts.clear, height: 10, width: 10),
            ),
          ),
        ),
      ),
    );
  }
}
