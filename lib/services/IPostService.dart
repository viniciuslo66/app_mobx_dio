// ignore_for_file: file_names

import 'package:app_mobx_dio/model/posts_model.dart';
import 'package:dio/dio.dart';

abstract class IPostService {
  IPostService(this.service);

  Future<List<PostsModel>> fetchDatas();

  final Dio service;
}
