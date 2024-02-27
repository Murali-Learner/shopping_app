import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImage extends StatelessWidget {
  final String image;
  final double height;
  final double? width;
  final Color? color;
  final BoxFit fit;
  final double? borderRadius;
  const AppImage(
    this.image, {
    Key? key,
    required this.height,
    this.width,
    this.borderRadius,
    this.color,
    this.fit = BoxFit.fill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: _getImage(),
    );
  }

  _getImage() {
    if (image.endsWith(".svg")) {
      return SvgPicture.asset(
        image,
        height: height,
        width: width ?? height,
        fit: fit,
      );
    } else if (image.startsWith("http")) {
      return CachedNetworkImage(
        height: height,
        width: width ?? height,
        imageUrl: image,
        fit: fit,
        placeholder: (context, url) => Center(
          child: CircularProgressIndicator(
            backgroundColor: Theme.of(context).colorScheme.secondary,
          ),
        ),
        errorWidget: (context, url, error) => const Center(
          child: Icon(Icons.error_outline_outlined),
        ),
      );
    } else if (image.startsWith('asset')) {
      return Image.asset(
        image,
        height: height,
        width: width ?? height,
        color: color,
        fit: fit,
      );
    } else {
      return SizedBox(
        width: width ?? height,
        height: height,
      );
    }
  }
}
