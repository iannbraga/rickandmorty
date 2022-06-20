// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rickandmorty/controller/rick_morty_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = RickMortyController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Rick an Morty'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Card(
            child: TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.name,
            ),
          ),
          FutureBuilder<dynamic>(
              future: controller.getPersonagens(),
              builder: (context, snapshot) {
                return Flexible(
                  child: ListView.builder(
                      itemCount: controller.personagens.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: Image.network(
                              controller.personagens[index].image.toString(),
                            ),
                            title: Text(
                                controller.personagens[index].name.toString()),
                            subtitle: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                    '${controller.personagens[index].status.toString()} - ${controller.personagens[index].gender.toString()}'),
                              ],
                            ),
                          ),
                        );
                      }),
                );
              }),
        ],
      ),
    );
  }
}
