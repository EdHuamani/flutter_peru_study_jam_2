import 'package:flutter/material.dart';
import 'package:study_jam_peru_2/repository.dart';

class RepositoryItem extends StatelessWidget {
  final Repository repository;

  const RepositoryItem({Key key, this.repository}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(repository.name),
      subtitle: Text(repository.language),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[Text('${repository.stars}'), Icon(Icons.star)],
      ),
    );
  }
}
