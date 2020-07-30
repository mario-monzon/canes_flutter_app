import 'package:json_annotation/json_annotation.dart';

part 'news_model.g.dart';

@JsonSerializable(nullable: false, explicitToJson: true)
class News {
  News({
    this.id,
    this.userId,
    this.title,
    this.body,
  });

  @JsonKey(name: 'id', nullable: false)
  int id;

  @JsonKey(name: 'userId', nullable: false)
  int userId;

  @JsonKey(name: 'title', nullable: false)
  String title;

  @JsonKey(name: 'body', nullable: false)
  String body;

// ignore: public_member_api_docs
  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  // ignore: public_member_api_docs
  Map<String, dynamic> toJson() => _$NewsToJson(this);
}
