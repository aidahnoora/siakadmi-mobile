import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:siakad/constants.dart';
import 'package:siakad/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'http://${Constants.IP_ADDRESS}:8000/api';
  final storage = new FlutterSecureStorage();

  Future<UserModel> login({
    String? email,
    String? password,
  }) async {
    var url = '$baseUrl/login';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];
      await storage.write(key: 'token', value: data['access_token']);
      await storage.write(key: 'user_name', value: data['name']);
      await storage.write(key: 'user_email', value: data['email']);
      await storage.write(key: 'user_nis', value: data['nis']);
      await storage.write(key: 'login_status', value: 'true');
      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }
}
