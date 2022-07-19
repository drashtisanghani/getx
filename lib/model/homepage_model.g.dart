// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homepage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePage _$HomePageFromJson(Map<String, dynamic> json) => HomePage(
      count: json['count'] as int?,
      entries: (json['entries'] as List<dynamic>?)
          ?.map((e) => Entry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomePageToJson(HomePage instance) => <String, dynamic>{
      'count': instance.count,
      'entries': instance.entries,
    };

Entry _$EntryFromJson(Map<String, dynamic> json) => Entry(
      API: json['API'] as String?,
      Description: json['Description'] as String?,
    );

Map<String, dynamic> _$EntryToJson(Entry instance) => <String, dynamic>{
      'API': instance.API,
      'Description': instance.Description,
    };
