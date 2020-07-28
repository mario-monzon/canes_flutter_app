import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../util/text_utils.dart';

/// A widget that shows an image loaded from an url with
/// tap effect
class ImageTile extends StatelessWidget {
  // ignore: public_member_api_docs
  const ImageTile({Key key, this.imageUrl, this.onTap, this.borderRadius})
      : super(key: key);

  /// The url of the image
  final String imageUrl;

  /// The action to perform when tapping this widget
  final void Function() onTap;

  // ignore: public_member_api_docs
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(0.0),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: imageUrl.isValidUrl()
                ? CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.cover,
                  )
                : null,
          ),
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
