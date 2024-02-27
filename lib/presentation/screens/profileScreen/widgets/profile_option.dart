import 'package:flutter/material.dart';
import 'package:test_app/core/utils/consts/consts.dart';
import 'package:test_app/core/utils/styling/app_measurements.dart';
import 'package:test_app/core/utils/styling/spacing_widgets.dart';
import 'package:test_app/presentation/globalWiidgets/app_image.dart';

class ProfileOption extends StatelessWidget {
  const ProfileOption({
    super.key,
    required this.icon,
    required this.name,
  });
  final String name;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: AppColors.divider,
          height: AppMeasures.dividerHeight,
          thickness: AppMeasures.dividerThickness,
        ),
        Spacing.h20,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 25,
                    width: 25,
                    child: AppImage(
                      icon,
                      height: 25,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Spacing.w20,
                  Text(
                    name,
                    style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 20,
                      fontFamily: AppFonts.gilroyRegular,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                  height: 12,
                  width: 12,
                  child: Icon(Icons.arrow_forward_ios_rounded)),
            ],
          ),
        ),
        Spacing.h20,
      ],
    );
  }
}


//               Positioned(
//                 left: 0,
//                 top: 0,
//                 child: Container(
//                   width: 18,
//                   height: 20,
//                   child: Stack(children: [
//                   ,
//                   ]),
//                 ),
//               ),

//               Positioned(
//                 left: 362.25,
//                 top: 17,
//                 child: Transform(
//                   transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
//                   child: Container(
//                     width: 8.40,
//                     height: 14,
//                     clipBehavior: Clip.antiAlias,
//                     decoration: BoxDecoration(),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                       ,
//                       ],
//                     ),
//                   ),
//                 ),
//               ),