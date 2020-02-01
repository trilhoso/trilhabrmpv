//import 'package:cached_network_image/cached_network_image.dart';
//
//import 'package:flutter/material.dart';
//import 'package:trilhabr_mvp/pages/cidades/cidade.dart';
//import 'package:trilhabr_mvp/pages/cidades/cidade_page.dart';
//import 'package:trilhabr_mvp/utils/nav.dart';
//
//class CidadesListView extends StatelessWidget {
//  final List<Cidade> cidades;
//
//  CidadesListView(this.cidades);
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      padding: EdgeInsets.all(16),
//      child: ListView.builder(
//        itemCount: cidades.length,
//        itemBuilder: (context, index) {
//          Cidade c = cidades[index];
//
//          return Card(
//            color: Colors.grey[100],
//            child: Container(
//              padding: EdgeInsets.all(10),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  Center(
//                    child: CachedNetworkImage(
//                      imageUrl:
//                      c.urlFoto ??
//                          "http://www.livroandroid.com.br/livro/carros/esportivos/Ferrari_FF.png",
//                      width: 250,
//                    ),
//                  ),
//                  Text(
//                    c.nome,
//                    maxLines: 1,
//                    overflow: TextOverflow.ellipsis,
//                    style: TextStyle(fontSize: 25),
//                  ),
//                  Text(
//                    "descrição...",
//                    style: TextStyle(fontSize: 16),
//                  ),
//                  ButtonBarTheme(
//                    data: ButtonBarThemeData(),
//                    child: ButtonBar(
//                      children: <Widget>[
//                        FlatButton(
//                          child: const Text('DETALHES'),
//                          onPressed: () => _onClickCidade(context,c),
//                        ),
//                        FlatButton(
//                          child: const Text('SHARE'),
//                          onPressed: () {
//                            /* ... */
//                          },
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          );
//        },
//      ),
//    );
//  }
//
//  _onClickCidade(context,Cidade c) {
//    push(context, CidadePage(c));
//  }
//}
