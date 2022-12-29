class MapelModel{

  int? id;
  String? namaMapel;

  MapelModel({
    this.id,
    this.namaMapel,
  });

  factory MapelModel.fromJson(Map<String, dynamic> json) {
    return MapelModel(
      id: json['id'],
      namaMapel: json['nama_mapel'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id' : id,
      'nama_mapel' : namaMapel,
    };
  }
}