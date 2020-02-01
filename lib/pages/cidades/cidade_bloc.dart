
import 'dart:async';


import 'package:trilhabr_mvp/pages/cidades/cidade.dart';
import 'package:trilhabr_mvp/utils/bloc.dart';
import 'cidades_api.dart';


class CarrosBloc extends SimpleBloc<List<Cidade>>{

  Future<List<Cidade>> fetch() async {
    try {
      List<Cidade> cidades = await CidadesApi.getCidades();

      add(cidades);

      return cidades;
    } catch (e) {
      addError(e);
    }

    return [];
  }
}