import 'package:siakad/models/hari_model.dart';

class AbsensiModel {
  final int? id;
  final String? sakit;
  final String? izin;
  final String? alfa;

  AbsensiModel({
    this.id,
    this.sakit,
    this.izin,
    this.alfa,
  });

  factory AbsensiModel.fromJson(Map<String, dynamic> json) {
    return AbsensiModel(
      id: json['id'],
      sakit: json['sakit'],
      izin: json['izin'],
      alfa: json['alfa'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id' : id,
      'sakit' : sakit,
      'izin' : izin,
      'alfa' : alfa,
    };
  }
}