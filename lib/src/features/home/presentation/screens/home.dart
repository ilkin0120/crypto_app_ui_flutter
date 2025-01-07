import 'package:crypto_app_ui/src/common/extensions/build_context_ext.dart';
import 'package:crypto_app_ui/src/common/widgets/custom_gap.dart';
import 'package:crypto_app_ui/src/features/home/presentation/widgets/action_button.dart';
import 'package:crypto_app_ui/src/features/home/presentation/widgets/crypto_item_widget.dart';
import 'package:crypto_app_ui/src/features/home/presentation/widgets/profile.dart';
import 'package:crypto_app_ui/src/route/route_names.dart';
import 'package:flutter/material.dart';
import '../../../../common/constants/assets.dart';
import '../../../../common/widgets/background.dart';
import '../widgets/balance.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Background(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalGap(50),
          const Profile(),
          const VerticalGap(25),
          const Balance(),
          const VerticalGap(25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionButton(
                  text: 'Receive',
                  assetName: Assets.icons.arrowDownLeft,
                  onClick: () {},
                ),
                ActionButton(
                    text: 'Send',
                    assetName: Assets.icons.arrowRightUp,
                    onClick: () {}),
                ActionButton(
                    text: 'Buy',
                    assetName: Assets.icons.wallet,
                    onClick: () {}),
                ActionButton(
                    text: 'Swap',
                    assetName: Assets.icons.exchange,
                    onClick: () {
                      Navigator.pushNamed(context, RouteNames.swap);
                    }),
              ],
            ),
          ),
          const VerticalGap(25),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child:  Text(
              'Portfolio',
              style: context.text.displayLarge.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          const VerticalGap(10),
          CryptoItemWidget(
            blockchainName: "Cardano",
            priceChange: '+44.02',
            cryptoName: 'ADA',
            price: 1.02,
            iconColor: Colors.white,
            iconName: Assets.icons.cardano,
          ),
          const VerticalGap(10),
          CryptoItemWidget(
            blockchainName: "Bitcoin",
            cryptoName: 'BTC',
            priceChange: '-1.45',
            price: 93455,
            iconColor: Colors.orangeAccent,
            iconName: Assets.icons.btc,
          ),
          const VerticalGap(10),
          CryptoItemWidget(
            price: 3200,
            blockchainName: "Etherium",
            cryptoName: 'ETH',
            priceChange: '+8.26',
            iconColor: Colors.blueAccent,
            iconName: Assets.icons.eth,
          ),
        ],
      ),
    )));
  }
}
