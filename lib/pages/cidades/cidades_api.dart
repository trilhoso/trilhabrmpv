import 'package:trilhabr_mvp/imports.dart';
import 'package:trilhabr_mvp/utils/http_helper.dart' as http;

import 'dart:convert' as convert;

import 'cidade.dart';

class CidadesApi {

  static Future<List<Cidade>> getCidades() async {
    //String url = "http://www.mocky.io/v2/5db35e0a300000500057b628";
    String url = "http://www.mocky.io/v2/5e3263e9320000520094cde4";

    print("GET > $url");

    final response = await http.get(url);

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body.substring(0,20)}');

    String sUtf8 = convert.utf8.decode(response.bodyBytes);
    List list = convert.jsonDecode(sUtf8);

    List<Cidade> cidades = list.map<Cidade>((map) => Cidade.fromMap(map)).toList();

    return cidades;
  }
}
