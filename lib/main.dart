import 'package:flutter/material.dart';
import 'package:sample/app/list/view/poke_list_page.dart';
import 'package:sample/shared/service_locator.dart';

void main() {
  setupLocator();
  runApp(PokeApp());
}

class PokeApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PokeListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}