// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostsViewModel on _PostsViewModelBase, Store {
  final _$postsListAtom = Atom(name: '_PostsViewModelBase.postsList');

  @override
  List<PostsModel> get postsList {
    _$postsListAtom.reportRead();
    return super.postsList;
  }

  @override
  set postsList(List<PostsModel> value) {
    _$postsListAtom.reportWrite(value, super.postsList, () {
      super.postsList = value;
    });
  }

  final _$fetchDatasAsyncAction = AsyncAction('_PostsViewModelBase.fetchDatas');

  @override
  Future<void> fetchDatas() {
    return _$fetchDatasAsyncAction.run(() => super.fetchDatas());
  }

  @override
  String toString() {
    return '''
postsList: ${postsList}
    ''';
  }
}
