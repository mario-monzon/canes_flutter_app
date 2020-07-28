import 'package:json_annotation/json_annotation.dart';

// ignore_for_file: public_member_api_docs
class DateTimeIsoConverter implements JsonConverter<DateTime, String> {
  const DateTimeIsoConverter();

  @override
  DateTime fromJson(String txt) {
    return txt != null ? DateTime.parse(txt) : null;
  }

  @override
  String toJson(DateTime datetime) {
    return datetime?.toIso8601String();
  }
}
