// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ApiService extends ApiService {
  _$ApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiService;

  @override
  Future<Response<List<News>>> getPosts() {
    final $url = 'https://jsonplaceholder.typicode.com/posts';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<News>, News>($request);
  }

  @override
  Future<Response<News>> getPost(int id) {
    final $url = 'https://jsonplaceholder.typicode.com/posts/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<News, News>($request);
  }

  @override
  Future<Response<List<News>>> postPost() {
    final $url = 'https://jsonplaceholder.typicode.com/posts';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<News>, News>($request);
  }
}
