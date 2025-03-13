class UserInfo {
  final Data? data;
  final Support? support;
  const UserInfo({this.data, this.support});
  UserInfo copyWith({Data? data, Support? support}) {
    return UserInfo(data: data ?? this.data, support: support ?? this.support);
  }

  Map<String, Object?> toJson() {
    return {'data': data?.toJson(), 'support': support?.toJson()};
  }

  static UserInfo fromJson(Map<String, Object?> json) {
    return UserInfo(
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, Object?>),
        support: json['support'] == null
            ? null
            : Support.fromJson(json['support'] as Map<String, Object?>));
  }

  @override
  String toString() {
    return '''UserInfo(
                data:${data.toString()},
support:${support.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is UserInfo &&
        other.runtimeType == runtimeType &&
        other.data == data &&
        other.support == support;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, data, support);
  }
}

class Support {
  final String? url;
  final String? text;
  const Support({this.url, this.text});
  Support copyWith({String? url, String? text}) {
    return Support(url: url ?? this.url, text: text ?? this.text);
  }

  Map<String, Object?> toJson() {
    return {'url': url, 'text': text};
  }

  static Support fromJson(Map<String, Object?> json) {
    return Support(
        url: json['url'] == null ? null : json['url'] as String,
        text: json['text'] == null ? null : json['text'] as String);
  }

  @override
  String toString() {
    return '''Support(
                url:$url,
text:$text
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Support &&
        other.runtimeType == runtimeType &&
        other.url == url &&
        other.text == text;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, url, text);
  }
}

class Data {
  final int? id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? avatar;
  const Data({this.id, this.email, this.firstName, this.lastName, this.avatar});
  Data copyWith(
      {int? id,
      String? email,
      String? firstName,
      String? lastName,
      String? avatar}) {
    return Data(
        id: id ?? this.id,
        email: email ?? this.email,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        avatar: avatar ?? this.avatar);
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'avatar': avatar
    };
  }

  static Data fromJson(Map<String, Object?> json) {
    return Data(
        id: json['id'] == null ? null : json['id'] as int,
        email: json['email'] == null ? null : json['email'] as String,
        firstName:
            json['first_name'] == null ? null : json['first_name'] as String,
        lastName:
            json['last_name'] == null ? null : json['last_name'] as String,
        avatar: json['avatar'] == null ? null : json['avatar'] as String);
  }

  @override
  String toString() {
    return '''Data(
                id:$id,
email:$email,
firstName:$firstName,
lastName:$lastName,
avatar:$avatar
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Data &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.email == email &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.avatar == avatar;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, email, firstName, lastName, avatar);
  }
}
