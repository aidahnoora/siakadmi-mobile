import 'dart:convert';

import 'package:siakad/models/absensi_model.dart';
import 'package:http/http.dart' as http;

class AbsensiService {
  String baseUrl = 'http://192.168.0.103:8000/api';

  Future<List<AbsensiModel>> getAbsensis() async {
    var url = '$baseUrl/absensi-siswa';
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if(response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<AbsensiModel> absensis = [];

      for (var item in data) {
        absensis.add(AbsensiModel.fromJson(item));
      }

      return absensis;
    } else {
      throw Exception('Gagat Get Absensis!');
    }
  }
}