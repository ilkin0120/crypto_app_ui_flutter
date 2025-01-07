import 'package:crypto_app_ui/src/common/extensions/double_extensions.dart';
import 'package:crypto_app_ui/src/common/widgets/custom_gap.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/rounded_icon_logo.dart';

class CryptoItemWidget extends StatelessWidget {
  final String blockchainName;
  final String cryptoName;
  final String iconName;
  final double price;
  final Color iconColor;
  final String priceChange;

  const CryptoItemWidget(
      {super.key,
      required this.blockchainName,
      required this.cryptoName,
      required this.iconName,
      required this.price,
      required this.priceChange,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF2B2235).withOpacity(0.8), // Фон виджета
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              RoundedIconLogo(
                iconName: iconName,
                radius: 25,
                iconColor: iconColor,
              ),
              const HorizontalGap(12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    blockchainName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    cryptoName,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '\$${price.formatNumber()}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    '$priceChange%',
                    style: TextStyle(
                      color:
                          priceChange[0] == '+' ? Colors.yellow : Colors.pink,
                      fontSize: 13.0,
                    ),
                  ),
                  const HorizontalGap(4),
                  Icon(
                    priceChange[0] == '+'
                        ? Icons.arrow_upward
                        : Icons.arrow_downward,
                    color: priceChange[0] == '+' ? Colors.yellow : Colors.pink,
                    size: 14.0,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
