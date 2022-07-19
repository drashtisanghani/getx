import 'package:json_annotation/json_annotation.dart';

part 'homepage_model.g.dart';

@JsonSerializable()
class HomePage {
  int? count;
  List<Entry>? entries;
  HomePage({this.count, this.entries});
  factory HomePage.fromJson(Map<String, dynamic> json) => _$HomePageFromJson(json);
  Map<String, dynamic> toJson() => _$HomePageToJson(this);
}

@JsonSerializable()
class Entry {
  String? API;
  String? Description;
  Entry({this.API, this.Description});
  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);
  Map<String, dynamic> toJson() => _$EntryToJson(this);
}
