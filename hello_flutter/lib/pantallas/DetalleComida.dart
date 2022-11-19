import 'package:flutter/material.dart';
import 'package:hello_flutter/modelos/Comida.dart';
import 'ListaComida.dart';

class DetalleComida extends StatelessWidget
{
  final Comida comida;

  const DetalleComida(this.comida, {super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar( automaticallyImplyLeading: false ),
      body: Column(
          children: [
            ListTile(
                  title: Text(comida.titulo),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(comida.descripcion)
                    ],
                  ),
                ),
            Image.network(comida.foto),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                comida.parrafoc,
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 16.0, fontStyle: FontStyle.normal),
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.fromLTRB(30,12,30,12),
                ),
              child: const Text('done', style: TextStyle(fontSize: 20)),
              onPressed: ()
        {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => const ListaComida()));
        },
              )
        )],
        
      ),
    );
  }
}
    
    
            
      /*child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20),
        ),
        child: Text('done', style: TextStyle(fontSize: 20)),
        onPressed: ()
        {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => const ListaComida()));
        },
      )),*/
 
