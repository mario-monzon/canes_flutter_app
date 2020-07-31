import 'package:canes_app/model/news_model.dart';
import 'package:canes_app/repository/resource.dart';
import 'package:canes_app/widget/util/overlay_error.dart';
import 'package:canes_app/widget/util/overlay_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'NewList.dart';

class NewsListWidget extends StatefulWidget {
  // ignore: public_member_api_docs
  const NewsListWidget({
    Key key,
  }) : super(key: key);

  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsListWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Resource<List<News>>>(
        builder: (context, newsListResource, child) {
      return Stack(
        children: [
          NewsList(
            newsList:
                newsListResource?.data != null ? newsListResource?.data : [],
            status: newsListResource.status,
          ),
          OverlayProgressIndicator(
            visible: newsListResource.status == Status.working &&
                (newsListResource.data?.length ?? 0) == 0 &&
                newsListResource.status == Status.working,
          ),
          OverlayError(
            visible: newsListResource.status == Status.error,
            errorText: newsListResource?.error ?? "",
          )
        ],
      );
    });
  }
}
