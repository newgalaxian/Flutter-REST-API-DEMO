import 'dart:developer';

import 'package:flutter_api_demo/features/models/todos_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_api_demo/constants/constants.dart';
import 'package:flutter_api_demo/features/models/user_model.dart';

class ApiService {
  Future<List<UserModel>?> getUser() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> _model = userModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  Future<List<ToDos>?> getTodo() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.todosEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<ToDos> _model = toDosFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
