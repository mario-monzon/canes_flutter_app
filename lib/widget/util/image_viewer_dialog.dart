import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

/// Shows a dialog with an image with panning and zooming enabled
void openImageViewer(BuildContext context, ImageProvider imageProvider,
    {String heroTag}) {
  Navigator.push(
      context,
      PageRouteBuilder(
          fullscreenDialog: true,
          opaque: false,
          pageBuilder: (context, _, __) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: const Color(0x99000000),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: PhotoView(
                  heroAttributes: PhotoViewHeroAttributes(
                    tag: heroTag,
                    transitionOnUserGestures: true,
                  ),
                  initialScale: PhotoViewComputedScale.contained,
                  minScale: PhotoViewComputedScale.contained,
                  maxScale: PhotoViewComputedScale.contained * 4,
                  imageProvider: imageProvider,
                  loadingBuilder: (context, imageChunkEvent) =>
                      const Center(child: CircularProgressIndicator()),
                  enableRotation: false,
                  gaplessPlayback: true,
                  tightMode: true,
                  backgroundDecoration:
                      BoxDecoration(color: Colors.transparent),
                  onTapUp: (context, callback, value) =>
                      Navigator.of(context).pop(),
                ),
              ),
            );
          }));
}
