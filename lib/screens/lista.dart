import "package:flutter/material.dart";
export 'lista.dart';

class Lista extends StatelessWidget {
  Lista({Key? key}) : super(key: key);

  final List lista = List.generate(100, (index) {
    return {
      "id": index,
      "title": "Filme",
      "subtitle": "lançado em (data)"
    };
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: const Text('Filmes'),
        actions: [
          IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () => {
                    Navigator.pushReplacementNamed(context, "/")
                  }),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
            itemBuilder: (context, index) => Card(
                  elevation: 6,
                  margin: EdgeInsets.all(16),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(lista[index]['id'].toString()),
                      backgroundColor: Colors.indigo,
                    ),
                    title: Text(lista[index]["title"]),
                    subtitle: Text(lista[index]['subtitle']),
                    trailing: Icon(
                      Icons.camera_roll,
                      color: Colors.purple,
                    ),
                  ),
                )),
      ),
    );
  }
}
