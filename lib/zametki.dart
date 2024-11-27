import 'package:flutter/material.dart';


class Zametki extends StatefulWidget {
  const Zametki({super.key});

  @override
  State<Zametki> createState() => _ZametkiState();
}

class _ZametkiState extends State<Zametki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[300],
          centerTitle: true,
          title: Text(
            'Zametki',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.favorite_outline_outlined),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
          ]),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
            itemCount: 7,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue[400],
                  child: Icon(Icons.photo_camera),
                ),
              );
            }),
      )),
    );
  }
}
