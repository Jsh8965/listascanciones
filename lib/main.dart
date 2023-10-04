import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Canciones> _canciones=[
    Canciones("Master of puppets", "Metallica"),
    Canciones("Kashmir", "Led Zeppelin"),
    Canciones("Ella", "Rata Blanca"),
    Canciones("Enter sandman", "Metallica"),
    Canciones("Symphony of destruction ", "Megadeth"),
    Canciones("indians", "Anthrax"),

  ];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista Canciones'),
        ),
        body: ListView.builder(
          itemCount: _canciones.length,
            itemBuilder: (context,index){
          return ListTile(
            title: Text(_canciones[index].name
          ),
          leading: CircleAvatar(
            child: Text(_canciones[index].name.substring(0,1)),
          ),
          subtitle: Text(_canciones[index].autor),);
      }
      ),

    ));
    return const Placeholder();
  }
}

class Canciones {
  String name = " ";
  String autor= " ";

  Canciones (name,autor){
    this.name =name;
    this.autor = autor;
  }

}



