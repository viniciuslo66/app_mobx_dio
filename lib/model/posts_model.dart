import 'package:json_annotation/json_annotation.dart';
part 'posts_model.g.dart';

//Classe usada para receber o dados do json e colocando dentro de um MAP.
//Fornece construtores Dart Build System para lidar com JSON.
//Foi utilizado o site "JSON to dart" para conversar do json para código.

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
