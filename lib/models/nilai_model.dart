import 'package:siakad/models/mapel_model.dart';

class NilaiModel
{
  final int? id;
  final int? tugas;
  final int? uh;
  final int? uts;
  final int? uas;
  final MapelModel? mapel;

  NilaiModel({
    this.id,
    this.tugas,
    this.uh,
    this.uts,
    this.uas,
    this.mapel,
  });

  factory NilaiModel.fromJson(Map<String, dynamic> json) {
    return NilaiModel(
      id: json['id'],
      tugas: json['tugas'],
      uh: json['uh'],
      uts: json['uts'],
      uas: json['uas'],
      mapel: MapelModel.fromJson(json['mapel']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id' : id,
      'tugas' : tugas,
      'uh' : uts,
      'uas' : uas,
      'mapel' : mapel?.toJson(),
    };
  }
}