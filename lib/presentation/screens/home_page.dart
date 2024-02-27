import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/core/providers/main_provider.dart';
import 'package:test_app/core/utils/consts/consts.dart';
import 'package:test_app/core/utils/styling/app_measurements.dart';
import 'package:test_app/core/utils/styling/spacing_widgets.dart';
import 'package:test_app/presentation/globalWiidgets/app_image.dart';
import 'package:test_app/presentation/globalWiidgets/global_bottom_bar.dart';
import 'package:test_app/presentation/screens/cart_screen.dart';
import 'package:test_app/presentation/screens/exploreScreen/explore_screen.dart';
import 'package:test_app/presentation/screens/fav_screen.dart';
import 'package:test_app/presentation/screens/profileScreen/profile_screen.dart';
import 'package:test_app/presentation/screens/shop_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Widget> _screens;
  late List<BottomNavigationBarItem> _items;
  late MainProvider provider;
  @override
  void initState() {
    super.initState();
    provider = Provider.of<MainProvider>(context, listen: false);
    assignLists();
    provider.checkInternetConnection();
  }

  void assignLists() {
    _screens = const [
      ShopScreen(),
      ExploreScreen(),
      CartScreen(),
      FavScreen(),
      ProfileScreen(),
    ];
    _items = [
      BottomNavigationBarItem(
        icon: _navIcon(AssetConsts.bottomNavAssets.shopUnSelected),
        label: 'Shop',
      ),
      BottomNavigationBarItem(
        icon: _navIcon(AssetConsts.bottomNavAssets.exploreUnSelected),
        label: 'Explore',
        activeIcon: _navIcon(AssetConsts.bottomNavAssets.exploreSelected),
      ),
      BottomNavigationBarItem(
        icon: _navIcon(AssetConsts.bottomNavAssets.cartUnSelected),
        label: 'Cart',
      ),
      BottomNavigationBarItem(
        icon: _navIcon(AssetConsts.bottomNavAssets.favUnSelected),
        label: 'Favourite',
      ),
      BottomNavigationBarItem(
        icon: _navIcon(AssetConsts.bottomNavAssets.profileUnSelected),
        label: 'Account',
        activeIcon: _navIcon(AssetConsts.bottomNavAssets.profileSelected),
      ),
    ];
  }

  Widget _navIcon(String icon) {
    return SizedBox(
      height: AppMeasures.bottomNavIconSize,
      // width: AppMeasures.bottomNavIconSize,
      child: AppImage(
        icon,
        height: AppMeasures.bottomNavIconSize,
        fit: BoxFit.fill,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, provider, _) {
        return provider.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : !provider.isConnected
                ? Material(
                    child: GestureDetector(
                      onTap: () async {
                        await provider.checkInternetConnection();
                      },
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: AppMeasures.pageHeight(context) * 0.8,
                              width: AppMeasures.pageHeight(context),
                              child: AppImage(AssetConsts.noInternet,
                                  height: AppMeasures.pageHeight(context)),
                            ),
                            Spacing.h20,
                            const Text(
                              "Oops!, No internet connection, \nClick to refresh",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.blackLight,
                                fontFamily: AppFonts.gilroyBold,
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : SafeArea(
                    child: Scaffold(
                      body: _screens.elementAt(provider.selectedIndex),
                      bottomNavigationBar: GlobalBottomNavBar(
                        items: _items,
                        currentIndex: provider.selectedIndex,
                        onItemTapped: (index) => provider.onItemTapped(index),
                      ),
                    ),
                  );
      },
    );
  }
}
