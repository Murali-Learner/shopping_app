import 'package:flutter/material.dart';

class AppFonts {
  static const String gilroyRegular = 'Gilroy-Regular';
  static const String gilroyBold = 'Gilroy-Bold';
  static const String gilroyMedium = 'Gilroy-Medium';
}

class AppColors {
  static const Color black = Color(0xFF181725);
  static const Color blackLight = Color(0xFF030303);
  static const Color grey = Color(0xFF7C7C7C);
  static const Color green = Color(0xFF53B175);
  static const Color lightGrey = Color(0xFFF1F2F2);
  static const Color white = Colors.white;
  static const Color transparent = Colors.transparent;
  static const Color divider = Color(0xFFE2E2E2);
}

class AssetConsts {
  static BottomNavAssets bottomNavAssets = BottomNavAssets();
  static ProfileConsts profileConsts = ProfileConsts();

  static const String search = "assets/icons/search.svg";
  static const String clear = "assets/icons/clear.svg";
  static const String filter = "assets/icons/filter.svg";
  static const String add = "assets/icons/add.svg";
  static const String arrowRight = "assets/icons/arrow_right.svg";
  static const String noInternet = "assets/images/no_internet.jpg";
}

class BottomNavAssets {
  String get cartUnSelected => "assets/icons/cart_un_selected.svg";
  String get exploreSelected => "assets/icons/explore_selected.svg";
  String get exploreUnSelected => "assets/icons/explore_un_selected.svg";
  String get favUnSelected => "assets/icons/fav_un_selected.svg";
  String get logOut => "assets/icons/log_out.svg";
  String get profileSelected => "assets/icons/profile_selected.svg";
  String get profileUnSelected => "assets/icons/profile_un_selected.svg";
  String get shopUnSelected => "assets/icons/shop_un_selected.svg";
}

class ProfileConsts {
  String get proflePic =>
      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

  String get orders => "assets/icons/orders.svg";
  String get myDetails => "assets/icons/my_details.svg";
  String get deliveryAddress => "assets/icons/delivery_address.svg";
  String get paymentMethods => "assets/icons/payment_methods.svg";
  String get promoCard => "assets/icons/promo_card.svg";
  String get notification => "assets/icons/notificaition.svg";
  String get help => "assets/icons/help.svg";
  String get about => "assets/icons/about.svg";
  String get editProfile => "assets/icons/edit_profile.svg";
}
