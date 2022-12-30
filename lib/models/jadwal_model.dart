// To parse this JSON data, do
//
//     final jadwalModel = jadwalModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<JadwalModel> jadwalModelFromJson(String str) => List<JadwalModel>.from(json.decode(str).map((x) => JadwalModel.fromJson(x)));

String jadwalModelToJson(List<JadwalModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class JadwalModel {
    JadwalModel({
        required this.id,
        required this.hariId,
        required this.kelasId,
        required this.mapelId,
        required this.jamMulai,
        required this.jamSelesai,
        required this.createdAt,
        required this.updatedAt,
        required this.hari,
        required this.kelas,
        required this.mapel,
    });

    int id;
    int hariId;
    int kelasId;
    int mapelId;
    String jamMulai;
    String jamSelesai;
    DateTime createdAt;
    DateTime updatedAt;
    String hari;
    String kelas;
    String mapel;

    factory JadwalModel.fromJson(Map<String, dynamic> json) => JadwalModel(
        id: json["id"],
        hariId: json["hari_id"],
        kelasId: json["kelas_id"],
        mapelId: json["mapel_id"],
        jamMulai: json["jam_mulai"],
        jamSelesai: json["jam_selesai"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        hari: json["hari"],
        kelas: json["kelas"],
        mapel: json["mapel"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "hari_id": hariId,
        "kelas_id": kelasId,
        "mapel_id": mapelId,
        "jam_mulai": jamMulai,
        "jam_selesai": jamSelesai,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "hari": hari,
        "kelas": kelas,
        "mapel": mapel,
    };
}
