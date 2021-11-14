import 'package:app_mobx_dio/model/posts_model.dart';
import 'package:flutter/material.dart';

class PostsCard extends StatelessWidget {
  final PostsModel model;

  const PostsCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.add_reaction_outlined),
        title: Text(model.title ?? ''),
        subtitle: Text(model.body ?? ''),
        onTap: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: Text(model.title ?? ''),
            content: Text(model.body ?? ''),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Fechar'),
                child: const Text('Fechar'),
              ),
            ],
          ),
        ),
        dense: true,
      ),
    );
  }
}
