import 'package:flutter/material.dart';
import 'package:siakad/models/absensi_model.dart';
import 'package:siakad/services/absensi_service.dart';

class AbsensiProvider with ChangeNotifier
{
  List<AbsensiModel> _absensis = [];
  List<AbsensiModel> get absensis => _absensis;

  set absensis(List<AbsensiModel> absensis) {
    _absensis = absensis;
    notifyListeners();
  }

  Future<void> getAbsensis() async {
    try {
      List<AbsensiModel> absensis = await AbsensiService().getAbsensis();
      _absensis = absensis;
    } catch(e) {
      print(e);
    }
  }
}