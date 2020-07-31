import 'dart:async';

import 'package:canes_app/model/news_model.dart';
import 'package:chopper/chopper.dart';

import 'json_to_type_converter.dart';

part 'api.chopper.dart';

@ChopperApi(baseUrl: 'https://jsonplaceholder.typicode.com/posts')
abstract class ApiService extends ChopperService {
  @Get()
  Future<Response<List<News>>> getPosts();

  @Get(path: '/{id}')
  // Query parameters are specified the same way as @Path
  // but obviously with a @Query annotation
  Future<Response<News>> getPost(@Path('id') int id);

  // Put & Patch requests are specified the same way - they must contain the @Body
  @Get()
  Future<Response<List<News>>> postPost();

  static ApiService create() {
    final client = ChopperClient(
      // The first part of the URL is now here
      baseUrl: 'https://jsonplaceholder.typicode.com',
      services: [
        // The generated implementation
        _$ApiService(),
      ],
      // Converts data to & from JSON and adds the application/json header.
      converter: JsonToTypeConverter({
        News: (json) => News.fromJson(json),
      }),
    );

    // The generated class with the ChopperClient passed in
    return _$ApiService(client);
  }
}
