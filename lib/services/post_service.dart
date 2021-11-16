// ignore_for_file: unused_local_variable
import 'dart:io';

import 'package:app_mobx_dio/exceptions/service_path_exception.dart';
import 'package:app_mobx_dio/model/posts_model.dart';
import 'package:app_mobx_dio/services/IPostService.dart';
import 'package:dio/dio.dart';

class PostsService extends IPostService {
  PostsService(Dio service) : super(service);

  @override
  Future<List<PostsModel>> fetchDatas() async {
    //variável receberá os dados da API
    final response = await service.get(ServicePath.POSTS.rawValeu);

    //Se estiver tudo bem o statusCode do HTTP então ele constinuará para a criação do MAP
    if (response.statusCode == HttpStatus.ok) {
      final responseData = response.data;
      if (responseData is List) {
        return responseData.map((e) => PostsModel.fromJson(e)).toList();
      }
    }

    //retornando a lista com os dados
    return [];
  }
}

// ignore: constant_identifier_names
enum ServicePath { POSTS, BASEURL }

extension ServicePathExtension on ServicePath {
  String get rawValeu {
    switch (this) {
      case ServicePath.POSTS:
        return '/posts';
      case ServicePath.BASEURL:
        return 'https://jsonplaceholder.typicode.com';
      default:
        throw ServicePathException(this);
    }
  }
}
