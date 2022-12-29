class UserModel {
  final int? id;
  final String? name;
  final String? email;
  final int? siswaNis;
  String? token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.siswaNis,
    this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      siswaNis: json['siswa_nis'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id' : id,
      'name' : name,
      'email' : email,
      'siswa_nis' : siswaNis,
      'token' : token,
    };
  }
}