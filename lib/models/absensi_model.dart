import 'package:meta/meta.dart';
import 'dart:convert';

List<AbsensiModel> jadwalModelFromJson(String str) => List<AbsensiModel>.from(json.decode(str).map((x) => AbsensiModel.fromJson(x)));

String absensiModelToJson(List<AbsensiModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class AbsensiModel {
  AbsensiModel({
    required this.id,
    required this.kelasId,
    required this.siswaNis,
    required this.tanggal,
    required this.keterangan,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int kelasId;
  int siswaNis;
  String tanggal;
  String keterangan;
  DateTime createdAt;
  DateTime updatedAt;

  factory AbsensiModel.fromJson(Map<String, dynamic> json) => AbsensiModel(
    id: json["id"],
    kelasId: json["kelas_id"],
    siswaNis: json["siswa_nis"],
    tanggal: json["tanggal"],
    keterangan: json["keterangan"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id" : id,
    "kelas_id": kelasId,
    "siswa_nis": siswaNis,
    "tanggal": tanggal,
    "keterangan": keterangan,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}