import 'package:crypto_app_ui/src/common/extensions/build_context_ext.dart';
import 'package:crypto_app_ui/src/common/widgets/box.dart';
import 'package:crypto_app_ui/src/common/widgets/custom_gap.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app_ui/src/common/extensions/double_extensions.dart';
import '../../../../common/widgets/rounded_icon_logo.dart';
import 'count_button.dart';

class SwapItem extends StatelessWidget {
  final bool showButtons;
  final String actionText;
  final String coinName;
  final String iconPath;

  const SwapItem(
      {super.key,
      required this.actionText,
      required this.showButtons,
      required this.iconPath,
      required this.coinName});

  @override
  Widget build(BuildContext context) {
    return Box(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              actionText,
              style: context.text.bodyMedium,
            ),
            showButtons
                ? const Row(
                    children: [
                      CountButton(text: 'Half'),
                      HorizontalGap(18),
                      CountButton(text: 'MAX')
                    ],
                  )
                : const SizedBox()
          ],
        ),
        const VerticalGap(18),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RoundedIconLogo(
                  padding: 18,
                  radius: 30,
                  iconColor: context.color.primaryTextColor,
                  iconName: iconPath,
                ),
                const HorizontalGap(15),
                Text(coinName.toUpperCase(), style: context.text.headlineLarge),
              ],
            ),
            Text(1457.1.formatNumber(), style: context.text.headlineLarge)
          ],
        ),
        const VerticalGap(20),
        Text('Balance: ${14895.99.formatNumber()}',
            style: context.text.bodySmall.copyWith(
                color: context.color.secondaryTextColor,
                fontWeight: FontWeight.w400))
      ]),
    ));
  }
}
