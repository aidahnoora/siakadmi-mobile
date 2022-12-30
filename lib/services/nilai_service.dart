// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:siakad/constants.dart';
import 'package:siakad/models/nilai_model.dart';
import 'package:http/http.dart' as http;

class NilaiService {
  String baseUrl = 'http://192.168.2.37:8000/api';
  final storage = new FlutterSecureStorage();

  Future<List<NilaiModel>> getNilais() async {
    String? token = await storage.read(key: 'token');
    var url = '$baseUrl/nilai-siswa';
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data'];
      List<NilaiModel> nilais = [];

      for (var item in data) {
        nilais.add(NilaiModel.fromJson(item));
      }
      return nilais;
    } else {
      throw Exception('Gagal Get Nilais!');
    }
  }
}
