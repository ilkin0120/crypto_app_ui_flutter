import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgPicture extends StatelessWidget {
  final String assetName;
  final Color color;
  const CustomSvgPicture({super.key,required this.assetName,required this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(assetName,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
