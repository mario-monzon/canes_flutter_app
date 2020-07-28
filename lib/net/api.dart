import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';
import 'package:http/io_client.dart' as http;

import 'json_to_type_converter.dart';

part 'api.chopper.dart';

/// WARNING!
/// Any change to this file should be followed by a
/// 'flutter pub tun build_runner build' command to generate the corresponding
/// part class

/// A simple converter that ignores the body of the response
/// To be used to override the default json converter when neccesary
/// For example when you don't care about the response
Response voidResponse<String>(Response res) => res;

/// A simple converter that simply uses the body string of the response
/// To be used to override the default json converter when neccesary
Response<String> stringResponse<String>(Response res) =>
    Response<String>(res.base, res.body);

/// The definition of the main server api of the app
@ChopperApi(
  baseUrl: '',
)
// ignore_for_file: argument_type_not_assignable
abstract class ApiService extends ChopperService {
  /// Creates a new instance
  static ApiService create({
    @required String baseUrl,
  }) {
    final client = ChopperClient(
      baseUrl: baseUrl,
      client: http.IOClient(
          HttpClient()..connectionTimeout = const Duration(seconds: 10)),
      services: [
        _$ApiService(),
      ],
      interceptors: <dynamic>[],
      converter: const JsonToTypeConverter({}),
    );
    return _$ApiService(client);
  }
}
