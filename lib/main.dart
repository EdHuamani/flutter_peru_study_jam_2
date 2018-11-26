import 'package:flutter/material.dart';
import 'package:study_jam_peru_2/routes.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: getRoutes(context),
      onGenerateRoute: (r) => getGenerateRoute(r, context),
    );
  }
}
