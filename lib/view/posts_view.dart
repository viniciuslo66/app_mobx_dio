import 'package:app_mobx_dio/services/post_service.dart';
import 'package:app_mobx_dio/viewmodel/posts_view_model.dart';
import 'package:app_mobx_dio/widgets/post_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final _postsViewModel = PostsViewModel(
  service: PostsService(
    Dio(
      BaseOptions(baseUrl: ServicePath.BASEURL.rawValeu),
    ),
  ),
);

class PostsView extends StatelessWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) {
            return const Text('POSTS');
          },
        ),
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            itemCount: _postsViewModel.postsList.length,
            itemBuilder: (context, index) {
              return PostsCard(model: _postsViewModel.postsList[index]);
            },
          );
        },
      ),
    );
  }
}
