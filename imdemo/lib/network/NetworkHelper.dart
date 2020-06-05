import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:imdemo/Model/CommonData.dart';

class NetworkHelper {
  static Dio _dio;
  static Dio get dio {
    if (NetworkHelper._dio == null) {
      NetworkHelper._dio = Dio();
    }
    return NetworkHelper._dio;
  }

  static String convertUrl(String url) {
    return "${CommonData.hostAddress}$url";
  }

  static Future login({@required String account, @required String password}) async {
    Map data = {
      'account': account,
      'password': password
    };
    Map<String, dynamic> param = {
      'accountChannel': 'AUTH_ACCOUNT_PWD',
      'data': data,
      'autoRegister': 'YES'
    };
    Response response = await NetworkHelper.dio.post(convertUrl("authplatform/auth/v1/login.do"), queryParameters: param);
    return response.data;
  }

}