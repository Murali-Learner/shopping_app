import 'package:flutter/material.dart';
import 'package:test_app/core/utils/consts/consts.dart';

class GlobalBottomNavBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final Function(int) onItemTapped;

  const GlobalBottomNavBar({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: const TextStyle(
        color: AppColors.blackLight,
        fontFamily: AppFonts.gilroyRegular,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: const TextStyle(
        color: AppColors.blackLight,
        fontFamily: AppFonts.gilroyRegular,
        fontWeight: FontWeight.w600,
      ),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.green,
      unselectedItemColor: AppColors.blackLight,
      backgroundColor: AppColors.white,
      currentIndex: currentIndex,
      items: items,
      onTap: onItemTapped,
      selectedFontSize: 13,
      unselectedFontSize: 13,
    );
  }
}
