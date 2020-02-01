//import 'package:flutter/material.dart';
//import 'package:trilhabr_mvp/pages/cidades/cidade.dart';
//import 'package:trilhabr_mvp/pages/cidades/cidade_search.dart';
//import 'package:trilhabr_mvp/pages/cidades/cidades_bloc.dart';
//import 'package:trilhabr_mvp/utils/alert.dart';
//import 'package:trilhabr_mvp/utils/nav.dart';
//import 'package:trilhabr_mvp/widgets/text_error.dart';
//
//import 'cidade_page.dart';
//
//class CidadeFind extends StatefulWidget {
//
//  @override
//  _CidadeFindState createState() => _CidadeFindState();
//}
//
//class _CidadeFindState extends State<CidadeFind> {
//  final _bloc = CidadesBloc();
//  List<Cidade> cidades;
//  String _resultado = "";
//
//  @override
//  void initState() {
//    super.initState();
//
//    _bloc.fetch();
//  }
//
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("TRILHA BUSCA DE CIDADES"),
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(Icons.search),
//            onPressed: onClickSearch,
//          ),
//        ],
//      ),
//      body: _listView(),
//      drawer: Drawer(),
//
//    );
//  }
//
//  _listView() {
//    return StreamBuilder(
//      stream: _bloc.stream,
//      builder: (context, snapshot) {
//        if (snapshot.hasError) {
//          return TextError("Não foi possível buscar os cidades");
//        }
//
//        if (!snapshot.hasData) {
//          return Center(
//            child: CircularProgressIndicator(),
//          );
//        }
//
//        List<Cidade> cidades = snapshot.data;
//
//        return RefreshIndicator(
//          onRefresh: _onRefresh,
//          child: Container(
//            padding: EdgeInsets.all(16),
//            child: ListView.builder(
//              itemCount: cidades.length,
//              itemBuilder: (context, index) {
//                Cidade c = cidades[index];
//
//                return InkWell(
//                  child: _cardCidade(c, {index}),
//                  onTap: () => _onClickCidade(c),
//                );
//              },
//            ),
//          ),
//        );
//      },
//    );
//  }
//
//
//  _cardCidade(Cidade c, index) {
//    return GestureDetector(
//
//      child: Stack(
//
//
//        children: <Widget>[
//
//
//          c.urlFoto != null
//              ? Container(
//            child: Image.network(
//
//              c.urlFoto,
//              fit: BoxFit.cover,
//
//            ),
//            padding: EdgeInsets.only(bottom: 20),
//          )
//
//              : FlutterLogo(
//            size: 100,
//          ),
//
//          Align(
//            alignment: Alignment.topCenter,
//            child: Container(
//              margin: EdgeInsets.all(16),
//              padding: EdgeInsets.all(8),
//              decoration: BoxDecoration(
//                  color: Colors.black45,
//                  borderRadius: BorderRadius.circular(16)
//              ),
//
//              child: Text(
//                "Lugares ${c.pontosTuristicos[1].nome.length} \n"
//                    "Início     e     Fim data",
//
//
//                style: TextStyle(fontSize: 26, color: Colors.white),
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//
//  _onClickCidade(Cidade c) {
//    push(context, CidadePage(c));
////    push(context, CidadePageMap(c));
//  }
//
//  Future<void> _onRefresh() {
//    return _bloc.fetch();
//  }
//
//  logout(BuildContext context) {
//    print("TODO logout!");
//  }
//
//  @override
//  void dispose() {
//    super.dispose();
//
//    _bloc.dispose();
//  }
//
//
//
//  void onClickSearch() async{
//
//
//        final cidade = await showSearch<Cidade>(
//            context: context, delegate: CidadeSearch());
//        if(cidade != null){
//          alert(context, "Busca" , cidade.nome);
//        }
//
//
//  }
//}