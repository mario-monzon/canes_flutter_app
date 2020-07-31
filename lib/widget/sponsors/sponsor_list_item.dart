import 'package:canes_app/model/sponsor_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SponsorListItem extends StatelessWidget {
  final Sponsor sponsor;

  const SponsorListItem({Key key, this.sponsor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: GestureDetector(
          onTap: () async {
            if (await canLaunch(sponsor.web)) {
              launch(sponsor.web);
            } else {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text("Web no found"),
              ));
            }
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                sponsor.logo,
                fit: BoxFit.cover,
                width: 80,
                height: 80,
              ),
              Text(
                sponsor.name,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontFamily: 'Canes_font_body'),
              ),
            ],
          ),
        ));
  }
}
