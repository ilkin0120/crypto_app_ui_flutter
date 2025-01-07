import 'package:crypto_app_ui/src/common/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Widget child;

  const Box({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 28),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: context.color.cryptoBackgroundColor.withOpacity(0.4)),
        child: child);
  }
}
