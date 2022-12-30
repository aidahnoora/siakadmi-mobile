import 'dart:convert';

import 'package:siakad/constants.dart';
import 'package:siakad/models/nilai_model.dart';
import 'package:http/http.dart' as http;

class NilaiService {
  String baseUrl = 'http://${Constants.IP_ADDRESS}:8000/api';

  Future<List<NilaiModel>> getNilais() async {
    var url = '$baseUrl/nilai-siswa';
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
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
