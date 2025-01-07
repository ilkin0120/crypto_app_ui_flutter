import 'package:crypto_app_ui/src/common/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget {
  final String title;

  const DefaultAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      height: 90,
      child: Row(
        children: [
          const Spacer(),
          Text(
            title,
            style:
                TextStyle(fontSize: 18, color: context.color.primaryTextColor),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
