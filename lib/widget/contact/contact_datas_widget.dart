import 'package:canes_app/generated/l10n.dart';
import 'package:canes_app/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDatasWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.grey,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(S.of(context).contact),
            Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 8),
              child: Text(
                S.of(context).email,
                style: TextStyle(fontFamily: "Canes_font_body"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(S.of(context).phone,
                  style: TextStyle(fontFamily: "Canes_font_body")),
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: GestureDetector(
                  onTap: () async {
                    if (await canLaunch(Global.webCanes)) {
                      launch(Global.webCanes);
                    } else {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("Web no found"),
                      ));
                    }
                  },
                  child: Text('Web: http://www.teldecanes.es',
                      style: TextStyle(fontFamily: "Canes_font_body")),
                )),
          ],
        ),
      ),
    );
  }
}
