import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:visitcard/shared/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.restoreSystemUIOverlays();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(textTheme: TextTheme(bodyText1: TextStyle(color: fCL))),
      home: MainCard(),
    );
  }
}

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[],
      ),
    );
  }
}
