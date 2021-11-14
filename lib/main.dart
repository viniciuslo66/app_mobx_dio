import 'package:app_mobx_dio/view/posts_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: PostsView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
