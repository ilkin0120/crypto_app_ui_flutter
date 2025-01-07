import 'package:crypto_app_ui/src/common/extensions/build_context_ext.dart';
import 'package:crypto_app_ui/src/features/swap/presentation/widgets/swap_item.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants/assets.dart';
import '../../../../common/widgets/custom_button.dart';

class SwapWrapper extends StatefulWidget {
  const SwapWrapper({super.key});

  @override
  State<SwapWrapper> createState() => _SwapWrapperState();
}

class _SwapWrapperState extends State<SwapWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isSwapped = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  void _toggleSwap() {
    setState(() {
      _isSwapped = !_isSwapped;
      _isSwapped ? _controller.forward() : _controller.reverse();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 430,
      child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return CustomMultiChildLayout(
              delegate: MyCustomLayoutDelegate(progress: _animation.value),
              children: [
                LayoutId(
                  id: 'swap1',
                  child: SwapItem(
                    coinName: 'eth',
                    iconPath: Assets.icons.eth,
                    actionText: _isSwapped ? 'You receive' : 'You send',
                    showButtons: !_isSwapped,
                  ),
                ),
                LayoutId(
                  id: 'swap2',
                  child: SwapItem(
                      iconPath: Assets.icons.btc,
                      coinName: 'btc',
                      actionText: !_isSwapped ? 'You receive' : 'You send',
                      showButtons: _isSwapped),
                ),
                LayoutId(
                  id: 'swap_btn',
                  child: CustomButton(
                    onPressed: _toggleSwap,
                    icon: const Icon(
                      Icons.swap_vert_rounded,
                      size: 33,
                    ),
                    style: BoxDecoration(
                        color: context.color.primaryTextColor,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

class MyCustomLayoutDelegate extends MultiChildLayoutDelegate {
  final double progress;

  MyCustomLayoutDelegate({required this.progress});

  @override
  void performLayout(Size size) {
    if (hasChild('swap1')) {
      layoutChild('swap1', BoxConstraints.tight(Size(size.width, 210)));
      positionChild('swap1', Offset(0.0, 0.0 + progress * 220));
    }
    if (hasChild('swap_btn')) {
      final buttonSize =
          layoutChild('swap_btn', BoxConstraints.tight(const Size(60, 60)));

      positionChild(
          'swap_btn',
          Offset(size.width / 2 - buttonSize.width / 2,
              size.height / 2 - buttonSize.height / 2));
    }
    if (hasChild('swap2')) {
      layoutChild('swap2', BoxConstraints.tight(Size(size.width, 210)));
      positionChild('swap2', Offset(0.0, 220.0 - progress * 220));
    }
  }

  @override
  bool shouldRelayout(MyCustomLayoutDelegate oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
