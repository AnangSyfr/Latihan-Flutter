class Users {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Users({this.id, this.email, this.firstName, this.lastName, this.avatar});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['avatar'] = avatar;
    return data;
  }

  static List<Users> fromJsonList(List data) {
    if (data == null || data.length == 0) return [];
    return data.map((e) => Users.fromJson(e)).toList();
  }
}
