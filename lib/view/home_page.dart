// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rickandmorty/controller/rick_morty_controller.dart';
import 'package:rickandmorty/widget/custom_text.dart';

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
                        var c = controller.personagens[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.network(
                                  c.image.toString(),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CustomText(texto: c.name.toString()),
                                    Text('Genero: ${c.gender.toString()}'),
                                    Text('Status: ${c.status.toString()}'),
                                    Text('Espécie: ${c.species.toString()}')
                                  ],
                                ),
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
