import 'package:crypto_app_ui/src/common/extensions/build_context_ext.dart';
import 'package:crypto_app_ui/src/common/widgets/custom_svg_picture.dart';
import 'package:crypto_app_ui/src/common/widgets/custom_gap.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final String assetName;
  final VoidCallback onClick;

  const ActionButton(
      {super.key,
      required this.text,
      required this.assetName,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            width: 53,
            height: 53,
            decoration: BoxDecoration(
                color: context.color.thirdDesignElementColor.withOpacity(0.6),
                borderRadius: BorderRadius.circular(60)),
            child: CustomSvgPicture(
                assetName: assetName, color: context.color.primaryTextColor),
          ),
          const VerticalGap(8),
          Text(
            text,
            style:
                context.text.labelSmall.copyWith(fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
