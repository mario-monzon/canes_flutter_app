import 'package:canes_app/model/news_model.dart';
import 'package:canes_app/net/standard_network.dart';
import 'package:canes_app/repository/resource.dart';

import '../global.dart';

class NewsRepository {
  static StandardApiCall<List<News>> getNews(Resource<List<News>> resource) {
    Global().initializeApi();

    final call = StandardApiCall<List<News>>(
        () => Global().api.postPost(), resource,
        retryForever: true);

    call.call();

    return call;
  }

  /// Retrieves a shop resource by his id, retrying forever on error
  static Resource<List<News>> getNewsResourceRetry() {
    final resource = Resource<List<News>>();

    getNews(resource);

    return resource;
  }
}
