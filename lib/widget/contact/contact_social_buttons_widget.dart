import 'package:canes_app/design/img.dart';
import 'package:canes_app/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text('Social Media'),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () async {
                      String fallbackUrl = Global.facebookCanes;

                      if (await canLaunch(Global.facebookCanes)) {
                        await launch(fallbackUrl, forceSafariVC: false);
                      }
                    },
                    child: SvgPicture.asset(Img.facebook),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (await canLaunch(Global.instagramCanes)) {
                        await launch(Global.instagramCanes,
                            forceSafariVC: false);
                      }
                    },
                    child: SvgPicture.asset(Img.instagram),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (await canLaunch(Global.twitterCanes)) {
                        await launch(Global.twitterCanes, forceSafariVC: false);
                      }
                    },
                    child: SvgPicture.asset(Img.twitter),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
