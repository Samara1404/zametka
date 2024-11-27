import 'package:flutter/material.dart';

import 'zametki.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 78, 125, 200),
          child: ListView(
            children: [
              const DrawerHeader(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Center(),
                    SizedBox(height: 10),
                    Text("Stambekova Samara",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    Text("Futter developer",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ],
                ),
              ),
              const Divider(
                  thickness: .06, color: Color.fromARGB(255, 30, 29, 29)),
              ListTile(
                iconColor: Colors.white,
                leading: const Icon(Icons.person),
                title: const Text('My Profile',
                    style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                iconColor: Colors.white,
                leading: const Icon(Icons.book),
                title: const Text('My Course',
                    style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                iconColor: Colors.white,
                leading: const Icon(Icons.school_rounded),
                title: const Text('Favorites',
                    style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
            ],
          )),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          "Zametka",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite_outline_outlined),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.share),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hoverColor: Colors.blue[200],
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 84, 78, 241)),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hoverColor: Colors.blue[200],
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 84, 78, 241)),
                    ),
                  ),
                ),
                SizedBox(
                    height: 40,
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Zametki()));
                      },
                      child: Text(
                        'Сохранить',
                        style:
                            TextStyle(color: Color.fromARGB(255, 50, 41, 225)),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
