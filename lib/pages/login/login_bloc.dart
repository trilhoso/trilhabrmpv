import 'dart:async';
import 'package:trilhabr_mvp/pages/login/login_api.dart';
import 'package:trilhabr_mvp/pages/login/usuario.dart';
import 'package:trilhabr_mvp/utils/api_response.dart';
import 'package:trilhabr_mvp/utils/bloc.dart';

class LoginBloc extends BooleanBloc {

  Future<ApiResponse> login(String login, String senha) async {

    add(true);

    ApiResponse response = await LoginApi.login(login, senha);

    add(false);

    return response;
  }
}