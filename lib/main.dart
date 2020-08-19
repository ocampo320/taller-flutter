/*
Para usar los componentes de material se debe importar el paquete
 */
import 'package:flutter/material.dart';

void main() {
  runApp(ContactApp());
}

class ContactApp extends StatefulWidget {
  @override
  _ContactAppState createState() => _ContactAppState();
}

class _ContactAppState extends State<ContactApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Mis contactos"),
          ),
          body: Container(
            child: ListView(
              children: <Widget>[
                Card(
                  child: Column(
                    children: <Widget>[Text("Dato1"), Icon(Icons.event)],
                  ),
                  color: Colors.pink,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
