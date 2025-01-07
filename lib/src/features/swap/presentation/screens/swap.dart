import 'package:crypto_app_ui/src/common/widgets/background.dart';
import 'package:crypto_app_ui/src/common/widgets/default_app_bar.dart';
import 'package:crypto_app_ui/src/features/swap/presentation/widgets/swap_wrapper.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_gap.dart';
import '../widgets/gas_info.dart';

class Swap extends StatelessWidget {
  const Swap({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Background(
          child: SingleChildScrollView(
        child: Column(
          children: [
            DefaultAppBar(title: 'Swap currency'),
            VerticalGap(10),
            SwapWrapper(),
            VerticalGap(10),
            GasInfo(),
            VerticalGap(25)
          ],
        ),
      )),
    );
  }
}
