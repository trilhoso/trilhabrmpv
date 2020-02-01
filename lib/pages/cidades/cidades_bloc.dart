import 'package:trilhabr_mvp/imports.dart';
import 'package:trilhabr_mvp/pages/cidades/cidade.dart';
import 'package:trilhabr_mvp/pages/cidades/cidades_api.dart';
import 'package:trilhabr_mvp/utils/bloc.dart';

class CidadesBloc extends SimpleBloc<List<Cidade>> {
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
