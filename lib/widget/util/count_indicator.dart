import 'package:flutter/material.dart';

import '../../design/app_colors.dart';
import '../../design/text.dart';
import '../../design/theme.dart';

/// A circle with a number count inside
/// used for notifications, number of items in the cart and stuff like that
class CountIndicator extends StatelessWidget {
  // ignore: public_member_api_docs
  const CountIndicator({
    Key key,
    @required this.count,
  }) : super(key: key);

  // ignore: public_member_api_docs
  final int count;
  // ignore: public_member_api_docs
  final double countSize = TextSizes.verySmall + 8;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 200),
      sizeCurve: Curves.decelerate,
      firstCurve: Curves.easeInOut,
      secondCurve: Curves.easeInOut,
      crossFadeState: count != null && count > 0
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
      firstChild: Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: AppColors.touchableColor,
          borderRadius: BorderRadius.circular(countSize / 2),
          border: Border.all(
            width: 1,
            color: Colors.white,
          ),
        ),
        constraints: BoxConstraints(
          minWidth: countSize,
          minHeight: countSize,
        ),
        child: Text(
          '$count',
          style: AppTheme.normalText.copyWith(
            color: Colors.white,
            fontSize: TextSizes.verySmall,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      secondChild: SizedBox(width: countSize, height: countSize),
    );
  }
}
