import 'package:crypto_app_ui/src/common/extensions/build_context_ext.dart';
import 'package:crypto_app_ui/src/common/extensions/double_extensions.dart';
import 'package:crypto_app_ui/src/common/widgets/box.dart';
import 'package:crypto_app_ui/src/common/widgets/custom_gap.dart';
import 'package:flutter/material.dart';

class GasInfo extends StatelessWidget {
  const GasInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Box(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.local_gas_station_outlined,
                    size: 16,
                    color: context.color.secondaryTextColor,
                  ),
                ),
                const WidgetSpan(
                    child: SizedBox(
                  width: 8,
                )),
                TextSpan(
                    text: "Your gas",
                    style: context.text.bodySmall
                        .copyWith(fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: '${12.78.formatNumber()} \$',
                    style: context.text.bodyMedium
                        .copyWith(color: context.color.primaryTextColor)),
                const WidgetSpan(child: HorizontalGap(8)),
                WidgetSpan(
                  child: Icon(Icons.info,
                      size: 20, color: context.color.thirdDesignElementColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
