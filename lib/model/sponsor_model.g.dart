// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sponsor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sponsor _$SponsorFromJson(Map<String, dynamic> json) {
  return Sponsor(
    name: json['name'] as String,
    logo: json['logo'] as String,
    web: json['web'] as String,
  );
}

Map<String, dynamic> _$SponsorToJson(Sponsor instance) => <String, dynamic>{
      'name': instance.name,
      'logo': instance.logo,
      'web': instance.web,
    };
