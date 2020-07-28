import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../design/app_colors.dart';
import '../../design/img.dart';
import '../../design/text.dart';
import '../../generated/l10n.dart';
import '../../state/navigation_state.dart';
import '../util/count_indicator.dart';

/// The Main Bottom navigation of the app.
/// It's a customized implementation of BottomNavigationBar.
class MainBottomNavigation extends StatelessWidget {
  // ignore: public_member_api_docs
  const MainBottomNavigation({
    Key key,
  }) : super(key: key);

  BottomNavigationBarItem _buildNavItem(String img, String label, {int count}) {
    return BottomNavigationBarItem(
      activeIcon: BottomMenuIcon(
        iconAsset: img,
        color: AppColors.defaultColor,
        count: count,
      ),
      icon: BottomMenuIcon(
        iconAsset: img,
        color: AppColors.disabledColor,
        count: count,
      ),
      title: Text(label),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MainMenuState>(
      builder: (context, state, child) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          _buildNavItem(
              Img.share, _buildPageTitle(context, MainTab.tap_1.index)),
          _buildNavItem(
              Img.share, _buildPageTitle(context, MainTab.tap_2.index)),
          _buildNavItem(
              Img.share, _buildPageTitle(context, MainTab.tap_3.index)),
          _buildNavItem(
              Img.share, _buildPageTitle(context, MainTab.tap_4.index)),
          _buildNavItem(
              Img.share, _buildPageTitle(context, MainTab.tap_5.index)),
        ],
        currentIndex: state.selectedOption,
        selectedItemColor: AppColors.defaultColor,
        onTap: (x) {
          menuTapHandler(context, x);
        },
      ),
    );
  }
}

String _buildPageTitle(BuildContext context, int index) {
  final titles = [
    S.of(context).tab1,
    S.of(context).tab2,
    S.of(context).tab3,
    S.of(context).tab4,
    S.of(context).tab5
  ];

  return titles[index];
}

// ignore: public_member_api_docs
void Function() menuTapHandler(BuildContext context, int index) {
  context.read<MainMenuState>().selectedOption = index;

  return null;
}

// ignore: public_member_api_docs
enum MainTab {
  // ignore: public_member_api_docs
  tap_1,
  // ignore: public_member_api_docs
  tap_2,
  // ignore: public_member_api_docs
  tap_3,
  // ignore: public_member_api_docs
  tap_4,
  // ignore: public_member_api_docs
  tap_5,
}

// ignore: public_member_api_docs
class BottomMenuIcon extends StatelessWidget {
  // ignore: public_member_api_docs
  const BottomMenuIcon({
    Key key,
    @required this.iconAsset,
    @required this.color,
    this.count,
  }) : super(key: key);

  // ignore: public_member_api_docs
  final Color color;

  // ignore: public_member_api_docs
  final String iconAsset;

  // ignore: public_member_api_docs
  final int count;

  // ignore: public_member_api_docs
  final double countSize = TextSizes.verySmall + 8;

  @override
  Widget build(BuildContext context) {
    return Stack(overflow: Overflow.visible, children: [
      SvgPicture.asset(
        iconAsset,
        color: color,
      ),
      Positioned(
        top: -6,
        right: -14,
        child: CountIndicator(count: count),
      ),
    ]);
  }
}
