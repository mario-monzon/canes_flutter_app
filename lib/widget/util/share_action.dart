import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share/share.dart';

import '../../design/app_colors.dart';
import '../../design/img.dart';

/// A share action button available to be added to app bars
class ShareAction extends StatelessWidget {
  // ignore: public_member_api_docs
  const ShareAction(
      {Key key, @required this.txt, this.color = AppColors.defaultColor})
      : super(key: key);

  // ignore: public_member_api_docs
  final String txt;

  // ignore: public_member_api_docs
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        Img.share,
        color: color,
      ),
      onPressed: () => Share.share(txt),
    );
  }
}
