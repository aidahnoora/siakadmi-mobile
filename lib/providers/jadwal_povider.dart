import 'package:flutter/material.dart';
import 'package:siakad/models/jadwal_model.dart';
import 'package:siakad/services/jadwal_service.dart';

class JadwalProvider with ChangeNotifier
{
  List<JadwalModel> _jadwals = [];
  List<JadwalModel> get jadwals => _jadwals;
  
  set jadwals(List<JadwalModel> jadwals) {
    _jadwals = jadwals;
    notifyListeners();
  }

  Future<void> getJadwals() async {
    try {
      List<JadwalModel> jadwals = await JadwalService().getJadwals();
      _jadwals = jadwals;
    } catch (e) {
      print(e);
    }
  }
}