import 'package:canes_app/model/news_model.dart';
import 'package:canes_app/repository/resource.dart';
import 'package:canes_app/widget/home/news_list_item.dart';
import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key key, @required this.newsList, this.status})
      : super(key: key);

  final List<News> newsList;
  final Status status;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          padding: const EdgeInsets.all(24),
          itemCount: (newsList.length ?? 0),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => (index >= newsList.length)
              ? Center(
                  child: status == Status.working
                      ? CircularProgressIndicator()
                      : null)
              : NewsListItem(
                  newItem: newsList[index],
                )),
    );
  }
}
