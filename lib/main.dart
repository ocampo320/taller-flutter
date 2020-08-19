/*
Para usar los componentes de material se debe importar el paquete
 */
import 'package:contactosapp/contacto.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ContactApp());
}

class ContactApp extends StatefulWidget {
  @override
  _ContactAppState createState() => _ContactAppState();
}

class _ContactAppState extends State<ContactApp> {
  List<Contacto> listContacts = [];

  @override
  Widget build(BuildContext context) {
    Contacto contacto1 = new Contacto("deivi johan ocampo", "3128389642",
        "santa elena", "telecentro.lasierra@gmail.com");

    listContacts.add(contacto1);

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
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 12, right: 50),
                            child: Icon(
                              Icons.account_circle,
                              size: 50,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              listContacts[0].name,
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 19, right: 60, bottom: 10),
                          child: Icon(
                            Icons.phone,
                            size: 30,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            listContacts[0].tel,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 19, right: 60, bottom: 10),
                          child: Icon(
                            Icons.email,
                            size: 30,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            listContacts[0].email,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 19, right: 60, bottom: 10),
                          child: Icon(
                            Icons.near_me,
                            size: 30,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            listContacts[0].address,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ]),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
