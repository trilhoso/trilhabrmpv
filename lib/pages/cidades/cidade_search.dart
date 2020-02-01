//import 'package:flutter/material.dart';
//import 'package:trilhabr_mvp/pages/cidades/cidade.dart';
//import 'package:trilhabr_mvp/pages/cidades/cidade_listview.dart';
//import 'package:trilhabr_mvp/pages/cidades/cidade_service.dart';
//
//
// class CidadeSearch extends SearchDelegate<Cidade>{
//  @override
//  List<Widget> buildActions(BuildContext context) {
//
//    return [
//      IconButton(
//        onPressed: (){
//          query="";
//        },
//        icon: Icon(Icons.clear),
//      ),
//    ];
//  }
//
//  @override
//  Widget buildLeading(BuildContext context) {
//    return IconButton(
//      icon: Icon(Icons.arrow_back),
//      onPressed: (){
//        close(context, null);
//      },
//    );
//  }
//
//  @override
//  Widget buildResults(BuildContext context) {
//      if(query.length > 2 ){
//    return FutureBuilder(
//      future: CidadeService.search(query),
//      builder: (context, snapshot){
//       if(snapshot.hasData){
//          final List<Cidade> cidade = snapshot.data;
//          return CidadesListView(cidade);
//        }else{
//          return Center(
//            child: CircularProgressIndicator(),
//          );
//        }
//      }
//    );
//  }
//  }
//
//  @override
//  Widget buildSuggestions(BuildContext context) {
//    // TODO: implement buildSuggestions
//    return null;
//  }
//
//
//}
