import 'package:flutter/material.dart';
import 'package:study_jam_peru_2/detail_screen.dart';
import 'package:study_jam_peru_2/home_screen.dart';
import 'package:study_jam_peru_2/login_screen.dart';

Map<String, WidgetBuilder> getRoutes(context) {
  return {
    '/': (BuildContext context) => LoginScreen(),
    HomeScreen.routeName: (BuildContext context) => HomeScreen(),
  };
}

bool isPathNameWithRoute(RouteSettings settings, String pathName) {
  final List<String> path = settings.name.split('/');
  final List<String> pathScreen = pathName.split('/');
  if (path[0] != '' || pathScreen[0] != '') return false;
  if (path[1].startsWith(pathScreen[1])) {
    if (path.length != 3) return false;
    return true;
  }
  return false;
}

String getIdByPath(RouteSettings settings) {
  final List<String> path = settings.name.split('/');
  if (path[0] != '' || path.length != 3) return null;
  return path[2];
}

Route<Null> getGenerateRoute(
    RouteSettings settings, BuildContext context) {
  final List<String> path = settings.name.split('/');
  if (path[0] != '') return null;

  // Detail screen
  if (isPathNameWithRoute(settings, DetailScreen.routePath)) {
    String _id = getIdByPath(settings);
    return new MaterialPageRoute<Null>(
      settings: settings,
      builder: (BuildContext context) => DetailScreen(id: _id),
    );
  }

  // The other paths we support are in the routes table.
  return null;
}
