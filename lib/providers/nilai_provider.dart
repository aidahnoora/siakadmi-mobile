import 'package:flutter/material.dart';
import 'package:siakad/models/nilai_model.dart';
import 'package:siakad/services/nilai_service.dart';

class NilaiProvider with ChangeNotifier
{
  List<NilaiModel> _nilais = [];
  List<NilaiModel> get nilais => _nilais;
  
  set nilais(List<NilaiModel> nilais) {
    _nilais = nilais;
    notifyListeners();
  }

  Future<void> getNilais() async {
    try {
      List<NilaiModel> nilais = await NilaiService().getNilais();
      _nilais = nilais;
    } catch (e) {
      print(e);
    }
  }
}