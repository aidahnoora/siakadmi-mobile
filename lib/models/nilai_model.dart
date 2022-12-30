import 'package:meta/meta.dart';
import 'dart:convert';

List<NilaiModel> nilaiModelFromJson(String str) => List<NilaiModel>.from(json.decode(str).map((x) => NilaiModel.fromJson(x)));

String nilaiModelToJson(List<NilaiModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NilaiModel
{
  NilaiModel({
    required this.id,
    required this.kelasId,
    required this.siswaNis,
    required this.mapelId,
    required this.tugas,
    required this.rataUh,
    required this.uts,
    required this.uas,
    required this.mapel,
  });
  
  int id;
  int kelasId;
  int siswaNis;
  int mapelId;
  int tugas;
  int rataUh;
  int uts;
  int uas;
  String mapel;

  factory NilaiModel.fromJson(Map<String, dynamic> json) => NilaiModel(
      id: json["id"],
      kelasId: json["kelas_id"],
      siswaNis: json["siswa_nis"],
      mapelId: json["mapel_id"],
      tugas: json["tugas"],
      rataUh: json["rata_uh"],
      uts: json["uts"],
      uas: json["uas"],
      mapel: json["mapel"],
  );

  Map<String, dynamic> toJson() {
    return {
      "id" : id,
      "kelas_id": kelasId,
      "siswa_nis": siswaNis,
      "mapel_id": mapelId,
      "tugas" : tugas,
      "rata_uh" : rataUh,
      "uts": uts,
      "uas" : uas,
      "mapel": mapel,
    };
  }
}