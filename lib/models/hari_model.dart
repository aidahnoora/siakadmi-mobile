class HariModel{

  int? id;
  String? namaHari;

  HariModel({
    this.id,
    this.namaHari,
  });

  factory HariModel.fromJson(Map<String, dynamic> json) {
    return HariModel(
      id: json['id'],
      namaHari: json['nama_hari'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id' : id,
      'nama_hari' : namaHari,
    };
  }
}