import 'package:json_annotation/json_annotation.dart';

part 'sponsor_model.g.dart';

@JsonSerializable(nullable: false, explicitToJson: true)
class Sponsor {
  // ignore: public_member_api_docs
  factory Sponsor.fromJson(Map<String, dynamic> json) =>
      _$SponsorFromJson(json);

  // ignore: public_member_api_docs
  Map<String, dynamic> toJson() => _$SponsorToJson(this);

  Sponsor({
    this.name,
    this.logo,
    this.web,
  });

  @JsonKey(name: 'name', nullable: false)
  String name;

  @JsonKey(name: 'logo', nullable: false)
  String logo;

  @JsonKey(name: 'web', nullable: false)
  String web;
}
