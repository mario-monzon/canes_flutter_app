import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../design/app_colors.dart';
import '../../design/img.dart';
import '../../design/theme.dart';
import '../../generated/l10n.dart';
import '../../state/navigation_state.dart';
import 'main_bottom_navigation.dart';

/// A lateral menu, alternative to the bottom nav bar
/// that will show when the screen is too short or too wide
class LateralMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainMenuState>(
      builder: (context, state, child) => SafeArea(
        child: ListView.builder(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          itemCount: 5,
          itemBuilder: (context, index) => Container(
            color: state.selectedOption == index
                ? AppColors.defaultColor.withOpacity(0.1)
                : Colors.transparent,
            child: ListTile(
              selected: state.selectedOption == index,
              leading: SvgPicture.asset(
                [Img.share, Img.share, Img.share, Img.share, Img.share][index],
                color: AppColors.defaultColor,
              ),
              title: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      [
                        S.of(context).tab1,
                        S.of(context).tab2,
                        S.of(context).tab3,
                        S.of(context).tab4,
                        S.of(context).tab5,
                      ][index],
                      style: AppTheme.boldText,
                    ),
                  ),
                  const SizedBox(width: 0, height: 0)
                ],
              ),
              onTap: () {
                menuTapHandler(context, index);
                // TODO(dani): this pop does not work well in tablets
                // the navigator should only pop when this widget is
                // inside a Drawer
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
    );
  }
}
