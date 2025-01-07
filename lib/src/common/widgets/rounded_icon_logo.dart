import 'package:crypto_app_ui/src/common/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

import 'custom_svg_picture.dart';

class RoundedIconLogo extends StatelessWidget {
  final String iconName;
  final Color iconColor;
  final double radius;
  final double padding;

  const RoundedIconLogo(
      {super.key,
      required this.iconName,
      required this.iconColor,
      required this.radius,
      this.padding = 12});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: context.color.cryptoBackgroundColor,
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: CustomSvgPicture(assetName: iconName, color: iconColor),
      ),
    );
  }
}
