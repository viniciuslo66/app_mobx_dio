// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostsViewModel on _PostsViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_PostsViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$albumsListAtom = Atom(name: '_PostsViewModelBase.albumsList');

  @override
  List<PostsModel> get albumsList {
    _$albumsListAtom.reportRead();
    return super.albumsList;
  }

  @override
  set albumsList(List<PostsModel> value) {
    _$albumsListAtom.reportWrite(value, super.albumsList, () {
      super.albumsList = value;
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
isLoading: ${isLoading},
albumsList: ${albumsList}
    ''';
  }
}
