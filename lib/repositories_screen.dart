import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:study_jam_peru_2/repository.dart';
import 'package:study_jam_peru_2/repository_item.dart';

class RepositoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchRepositories(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          // itemCount: snapshot.data.lenght,
          itemBuilder: (BuildContext context, int index) =>
              RepositoryItem(repository: snapshot.data[index]),
        );
      },
    );
  }
}

Future<List<Repository>> fetchRepositories() async {
  final response = await http.get(
      'https://api.github.com/user/repos?access_token=YOUR_TOKEN');

  if (response.statusCode == 200) {
    return (json.decode(response.body) as List)
        .map((json) => Repository.fromJson(json))
        .toList();
  } else {
    throw Exception('Failed to load post');
  }
}
