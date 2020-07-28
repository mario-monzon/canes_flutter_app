import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../design/theme.dart';
import '../../util/text_utils.dart';

/// A widget that shows an image loaded from an url and
/// a centered label below it
/// with tap effect
class ImageOverLabelTile extends StatelessWidget {
  // ignore: public_member_api_docs
  const ImageOverLabelTile({Key key, this.imageUrl, this.label, this.onTap})
      : super(key: key);

  /// The url of the image
  final String imageUrl;

  /// The text to show in the label below the image
  final String label;

  /// The action to perform when tapping this widget
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: SizedBox.expand(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: imageUrl.isValidUrl()
                      ? CachedNetworkImage(
                          imageUrl: imageUrl, fit: BoxFit.cover)
                      : null,
                ),
              ),
            ),
            if (label != null && label.isNotEmpty)
              Center(
                child: Text(
                  label,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: AppTheme.boldText,
                ),
              )
            else
              Container(),
          ],
        ),
        Positioned.fill(
            child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
          ),
        )),
      ],
    );
  }
}
