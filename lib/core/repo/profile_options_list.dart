import 'package:test_app/core/utils/consts/consts.dart';
import 'package:test_app/presentation/screens/profileScreen/widgets/profile_option.dart';

final List<ProfileOption> optionsList = [
  ProfileOption(icon: AssetConsts.profileConsts.orders, name: "Orders"),
  ProfileOption(icon: AssetConsts.profileConsts.myDetails, name: "MyDetails"),
  ProfileOption(
      icon: AssetConsts.profileConsts.deliveryAddress,
      name: "Delivery Address"),
  ProfileOption(
      icon: AssetConsts.profileConsts.paymentMethods, name: "Payment Methods"),
  ProfileOption(icon: AssetConsts.profileConsts.promoCard, name: "Promo Cord"),
  ProfileOption(
      icon: AssetConsts.profileConsts.notification, name: "Notifications "),
  ProfileOption(icon: AssetConsts.profileConsts.help, name: "Help"),
  ProfileOption(icon: AssetConsts.profileConsts.about, name: "About "),
];
