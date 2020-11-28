import 'package:flutter/material.dart';
import 'package:flutter_app/user-list.dart';
import 'package:flutter_app/user-profile.dart';

void main() {

  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(BuildContext context) => UserList(),
      '/profile':(BuildContext context) => Profile()
    },
    onGenerateRoute: (routeSettings){
      var path = routeSettings.name.split('/');
      var avatar = routeSettings.name.split('/https://');

      if (path[1] == "profile") {
        return new MaterialPageRoute(
          builder: (context) => new Profile(name: path[2], email: path[3], avatar: 'https://' + avatar[1]),
          settings: routeSettings,
        );
      // ignore: missing_return, missing_return, missing_return, missing_return
      }
    },
  ));
}