import 'package:flutter/material.dart';
import 'package:gestor/utilities/card.dart';

class Inicio extends StatefulWidget {
  Inicio({super.key});
  @override
  State<StatefulWidget> createState() => _Inicio();
}

class _Inicio extends State<Inicio> {
  List<Carta> estudiantes = [
    Carta(nombre: "LINDA", edad: 22, promedio: 2.3),
    Carta(nombre: "MARIANA", edad: 18, promedio: 4.5),
    Carta(nombre: "JOSE", edad: 20, promedio: 3.6),
  ];
   TextEditingController name=TextEditingController();
   TextEditingController age=TextEditingController();
   TextEditingController promo=TextEditingController();

  void agregar() {
    bool agregado=false;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("REGISTRAR"),
          content: Column(
            children: [
              TextField(controller: name,),
              TextField(controller: age,),
              TextField(controller: promo,),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                  Navigator.pop(context);
                },
                child: Text("CANCELAR"),
              ),
              ElevatedButton(
                onPressed: () {

                  estudiantes.add(Carta(nombre: name.text,
                      edad: int.parse(age.text),
                      promedio: double.parse(promo.text)));
                  setState(() {

                  });
                  Navigator.pop(context);
                },
                child: Text("AGREGAR"),
              ),
            ],
          ),
        );
      },
    );
    setState(() {
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("INFORME DE NOTAS"),backgroundColor: Colors.deepOrange,),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 20,
              children: [
                OutlinedButton(
                  onPressed: () {
                    agregar();
                  },
                  child: Text("Agregar"),
                ),
                ListView.builder(reverse: true,
                  shrinkWrap: true,
                  itemCount: estudiantes.length,
                  itemBuilder: (context, index) => Carta(
                    nombre: estudiantes[index].nombre,
                    edad: estudiantes[index].edad,
                    promedio: estudiantes[index].promedio,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
