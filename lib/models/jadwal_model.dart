import 'package:siakad/models/hari_model.dart';
import 'package:siakad/models/mapel_model.dart';

class JadwalModel
{
  final int id;
  final DateTime jamMulai;
  final DateTime jamSelesai;
  final HariModel hari;
  final MapelModel mapel;

  JadwalModel({
    required this.id,
    required this.jamMulai,
    required this.jamSelesai,
    required this.hari,
    required this.mapel,
  });

  factory JadwalModel.fromJson(Map<String, dynamic> json) {
    return JadwalModel(
      id: json['id'],
      jamMulai: DateTime.parse(json['jam_mulai']),
      jamSelesai: DateTime.parse(json['jam_selesai']),
      hari: HariModel.fromJson(json['hari']),
      mapel: MapelModel.fromJson(json['mapel']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id' : id,
      'jam_mulai' : jamMulai.toString(),
      'jam_selesai' : jamSelesai.toString(),
      'hari' : hari.toJson(),
      'mapel' : mapel.toJson(),
    };
  }
}