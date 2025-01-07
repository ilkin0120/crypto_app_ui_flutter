import 'package:crypto_app_ui/src/common/extensions/build_context_ext.dart';
import 'package:crypto_app_ui/src/common/extensions/double_extensions.dart';
import 'package:crypto_app_ui/src/common/widgets/custom_gap.dart';
import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    const double balance = 1800405.00;
    const double percentageChange = 15.24;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Wallet (USDT)", style: context.text.bodyMedium),
          const VerticalGap(4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  child: FittedBox(
                fit: BoxFit.fill,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "\$${balance.formatIntegerPart()}",
                          style:
                              context.text.displayLarge.copyWith(fontSize: 32)),
                      TextSpan(
                        text: ".${balance.formatDecimalPart()}",
                        style: context.text.displayLarge,
                      ),
                    ],
                  ),
                ),
              )),
              const HorizontalGap(12),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade700,
                  borderRadius: BorderRadius.circular(11),
                ),
                child: Text(
                  "+${percentageChange.toStringAsFixed(2)}%",
                  style: context.text.labelSmall.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.color.thirdDesignElementColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
