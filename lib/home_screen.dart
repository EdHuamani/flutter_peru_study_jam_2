import 'package:flutter/material.dart';
import 'package:study_jam_peru_2/follower_screen.dart';
import 'package:study_jam_peru_2/following_screen.dart';
import 'package:study_jam_peru_2/repositories_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('FlutterHub'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Repositories',
              ),
              Tab(
                text: 'Followers',
              ),
              Tab(
                text: 'Following',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            RepositoriesScreen(),
            FollowerScreen(),
            FollowingScreen(),
          ],
        ),
      ),
    );
  }
}
