import 'package:flutter/material.dart';
import 'package:hello_flutter/modelos/Comida.dart';
import 'package:hello_flutter/pantallas/DetalleComida.dart';

class ListaComida extends StatelessWidget {
  const ListaComida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text('Rommel Palma - 8A'),),
      body: ListView.builder(
        itemCount: listaComidas.length, 
        itemBuilder: (context, index){
          Comida comida = listaComidas[index]; 
          return Card(
            elevation: 6,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(comida.titulo),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(comida.descripcion)
                    ],
                  ),
                ),
                ListTile(
                    subtitle: Text(comida.parrafo),
                    onTap: ()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  DetalleComida(comida)));
                    },                
                ),     
              ],
            ),);
          }));
  }
}