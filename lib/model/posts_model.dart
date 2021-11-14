import 'package:json_annotation/json_annotation.dart';
part 'posts_model.g.dart';

@JsonSerializable()
class PostsModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostsModel({this.userId, this.id, this.title, this.body});

  factory PostsModel.fromJson(Map<String, dynamic> json) {
    return _$PostsModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PostsModelToJson(this);
  }
}
