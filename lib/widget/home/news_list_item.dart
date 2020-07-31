import 'package:canes_app/model/news_model.dart';
import 'package:flutter/material.dart';

import '../../nested_navigation_router.dart';

class NewsListItem extends StatelessWidget {
  final News newItem;

  const NewsListItem({Key key, this.newItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, NestedNavigationRouter.newsDetail,
              arguments: newItem);
        },
        child: Card(
          elevation: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.amber.withOpacity(0.6),
                child: Padding(
                    padding: EdgeInsets.all(3),
                    child: Text(
                      newItem.title.isEmpty ? "" : newItem.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Canes_font_body',
                      ),
                      maxLines: 3,
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  newItem.body.isEmpty ? "" : newItem.body,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Canes_font_body'),
                  maxLines: 3,
                ),
              )
            ],
          ),
          shadowColor: Colors.black,
        ));
  }
}
