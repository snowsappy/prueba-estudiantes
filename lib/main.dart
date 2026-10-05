

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestor/screen/inicio.dart';

void main(){
  runApp( Myapp());
}

class Myapp extends StatelessWidget{
  Myapp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Inicio()
    );
  }
}

