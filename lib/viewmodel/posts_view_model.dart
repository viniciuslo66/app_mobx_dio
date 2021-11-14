import 'package:app_mobx_dio/model/posts_model.dart';
import 'package:app_mobx_dio/services/IPostService.dart';
import 'package:mobx/mobx.dart';

part 'posts_view_model.g.dart';

class PostsViewModel = _PostsViewModelBase with _$PostsViewModel;

abstract class _PostsViewModelBase with Store {
  @observable
  bool isLoading = true;

  @observable
  List<PostsModel> albumsList = [];
  IPostService service;

  _PostsViewModelBase({required this.service}) {
    fetchDatas();
  }

  @action
  Future<void> fetchDatas() async {
    albumsList = await service.fetchDatas();
  }
}
