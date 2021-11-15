// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:app_mobx_dio/model/posts_model.dart';
import 'package:flutter/material.dart';

class PostDetalhes extends StatelessWidget {
  final PostsModel model;

  const PostDetalhes({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Detalhes'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 15, left: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.white10]),
            ),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://miro.medium.com/max/1400/1*mDXGhd_bmFNtPJ5AFbYITw.png",
                  ),
                  radius: 50.0,
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Title:",
                  style: TextStyle(
                      color: Colors.blue,
                      fontStyle: FontStyle.normal,
                      fontSize: 28.0),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  model.title ?? "",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Body:",
                  style: TextStyle(
                      color: Colors.blue,
                      fontStyle: FontStyle.normal,
                      fontSize: 28.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                ),
                Text(
                  model.body ?? '',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
