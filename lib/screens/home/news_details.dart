import 'package:canes_app/model/news_model.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

// ignore: public_member_api_docs
class NewsDetailScreen extends StatelessWidget {
  // ignore: public_member_api_docs, sort_constructors_first
  const NewsDetailScreen({this.newItem});

  // ignore: public_member_api_docs
  final News newItem;

  @override
  Widget build(BuildContext context) {
    final buildArgs =
        newItem ?? ModalRoute.of(context).settings.arguments as News;

    return Scaffold(
        appBar: AppBar(
          // ignore: unnecessary_string_interpolations
          title: Text('${S.of(context).news}'),
        ),
        body: Padding(
            padding: EdgeInsets.only(top: 5, left: 5, right: 5),
            child: Column(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(0.6),
                child: Padding(
                    padding: EdgeInsets.all(3),
                    child: Text(
                      buildArgs.title.isEmpty ? "" : buildArgs.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Canes_font_body',
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 5,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 5, right: 5),
                child: Text(
                  buildArgs.body.isEmpty ? "" : buildArgs.body,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Canes_font_body'),
                ),
              )
            ])));
  }
}
