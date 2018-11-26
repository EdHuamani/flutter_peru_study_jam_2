import 'package:flutter/material.dart';
import 'package:study_jam_peru_2/home_screen.dart';
import 'package:study_jam_peru_2/login_with_github.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('FlutterHub'),
        ),
        body: new Center(
          child: LoginWithGithub(
            onPressedEvent: () =>
                Navigator.of(context).pushReplacementNamed(HomeScreen.routeName),
          ),
        ));
  }
}
