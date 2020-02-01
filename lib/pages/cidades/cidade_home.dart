import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rxdart/rxdart.dart';

class CidadeHome extends StatefulWidget {

//  _redirecionaPainelPorTipoUsuario( String idUser, {context}) async{
//    Firestore db = Firestore.instance;
//
//    DocumentSnapshot snapshot = await db.collection("users")
//    .document(idUser)
//    .get();
//
//    Map<String, dynamic> dados = snapshot.data;
//    String tipoUsuario = dados["perfil"];
//    Navigator.pushReplacement(context, "/" );
//    switch(tipoUsuario){
//      case "admin":
//        break;
//
//      case "guest":
//
//        break;
//    }
//
//    Position position = await Geolocator().getLastKnownPosition(desiredAccuracy: LocationAccuracy.high);
//
//  }

  @override
  _CidadeHomeState createState() => _CidadeHomeState();
}

class _CidadeHomeState extends State<CidadeHome> {
  @override
  Widget build(BuildContext context)  {



    return Container(
      
      child: StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Column();
        }
      ),
    );
  }
}
