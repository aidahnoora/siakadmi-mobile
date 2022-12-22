class UserModel {
  int id;
  String name;
  String email;
  String username;
  String foto;
  String nis;
  String token;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    required this.foto,
    required this.nis,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      username: json['username'],
      foto: json['foto'],
      nis: json['nis'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id' : id,
      'name' : name,
      'email' : email,
      'username' : username,
      'foto' : foto,
      'nis' : nis,
      'token' : token,
    };
  }
}