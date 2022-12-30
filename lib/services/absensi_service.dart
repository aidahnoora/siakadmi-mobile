// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:siakad/constants.dart';
import 'package:siakad/models/absensi_model.dart';
import 'package:http/http.dart' as http;

class AbsensiService {
  String baseUrl = 'http://192.168.2.37:8000/api';
  final storage = new FlutterSecureStorage();

  Future<List<AbsensiModel>> getAbsensis() async {
    String? token = await storage.read(key: 'token');
    var url = '$baseUrl/absensi-siswa';
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
      List<AbsensiModel> absensis = [];

      for (var item in data) {
        absensis.add(AbsensiModel.fromJson(item));
      }
      return absensis;
    } else {
      throw Exception('Gagal Get Absensis!');
    }
  }
}
