import 'package:crypto_app_ui/src/common/extensions/build_context_ext.dart';
import 'package:crypto_app_ui/src/common/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CountButton extends StatelessWidget {
  final String text;

  const CountButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        style: BoxDecoration(
            border:
                Border.all(width: 1, color: context.color.secondaryTextColor),
            borderRadius: BorderRadius.circular(30)),
        label: Text(
          text.toUpperCase(),
          style: context.text.labelSmall,
        ),
        onPressed: () {});
  }
}
