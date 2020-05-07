import 'package:flutter/material.dart';
import 'package:practica_ipo2/modelos/turista.dart';
import 'package:practica_ipo2/secciones/detallesturista.dart';

class ItemTurista extends StatelessWidget{

  final Turista _turista;

  ItemTurista(this._turista);

  @override
  Widget build(BuildContext context){
    return ListTile(
      leading: new CircleAvatar(
        child: new Text(_turista.nombre[0]),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
      ),
      title: new Text(_turista.nombre+" "+_turista.apellidos),
      onTap: () {
        enviarDatos(context);
      },
    );
  }

  void enviarDatos(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetallesTurista(turista: this._turista)
      )
    );
  }
}