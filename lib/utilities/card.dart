import 'dart:ffi';

import 'package:flutter/material.dart';

class Carta extends StatelessWidget {
  String nombre;
  int edad;
  double promedio;

  Carta({
    super.key,
    required this.nombre,
    required this.edad,
    required this.promedio,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(color: Color(0xffeccdc4)),
        child:
            ListTile(
              
              title: Text("nombre:$nombre"),
              subtitle: Text("edad: $edad"),
              trailing: Text("promedio: $promedio"),leading: Icon(Icons.person),
            ),
      ),

        );


  }
}
