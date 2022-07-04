class UserModel {
  String? name;
  String? email;
  String? iId;
  String? id;



  UserModel({
    this.name,
    this.email,
    this.iId,
    this.id,
  });

  UserModel.fromJson(dynamic json) {
    email = json['email'];
    name = json['name'];
    iId = json['iId'];
    id=json['id'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'iId': iId,
      'id':id,

    };
  }
}






