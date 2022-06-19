import 'package:flutter/material.dart';
import 'package:rickandmorty/repository/repository.dart';
import 'package:rickandmorty/view/home_page.dart';

void main() {
  final rep = Repository();
  rep.fetchAllCarachters();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const HomePage(),
    );
  }
}
