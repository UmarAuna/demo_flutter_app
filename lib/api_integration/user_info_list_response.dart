class UserInfoListResponse {
  final int? page;
  final int? perPage;
  final int? total;
  final int? totalPages;
  final List<Data>? data;
  final Support? support;
  const UserInfoListResponse(
      {this.page,
      this.perPage,
      this.total,
      this.totalPages,
      this.data,
      this.support});
  UserInfoListResponse copyWith(
      {int? page,
      int? perPage,
      int? total,
      int? totalPages,
      List<Data>? data,
      Support? support}) {
    return UserInfoListResponse(
        page: page ?? this.page,
        perPage: perPage ?? this.perPage,
        total: total ?? this.total,
        totalPages: totalPages ?? this.totalPages,
        data: data ?? this.data,
        support: support ?? this.support);
  }

  Map<String, Object?> toJson() {
    return {
      'page': page,
      'per_page': perPage,
      'total': total,
      'total_pages': totalPages,
      'data': data?.map<Map<String, dynamic>>((data) => data.toJson()).toList(),
      'support': support?.toJson()
    };
  }

  static UserInfoListResponse fromJson(Map<String, Object?> json) {
    return UserInfoListResponse(
        page: json['page'] == null ? null : json['page'] as int,
        perPage: json['per_page'] == null ? null : json['per_page'] as int,
        total: json['total'] == null ? null : json['total'] as int,
        totalPages:
            json['total_pages'] == null ? null : json['total_pages'] as int,
        data: json['data'] == null
            ? null
            : (json['data'] as List)
                .map<Data>(
                    (data) => Data.fromJson(data as Map<String, Object?>))
                .toList(),
        support: json['support'] == null
            ? null
            : Support.fromJson(json['support'] as Map<String, Object?>));
  }

  @override
  String toString() {
    return '''UserInfoListResponse(
                page:$page,
perPage:$perPage,
total:$total,
totalPages:$totalPages,
data:${data.toString()},
support:${support.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is UserInfoListResponse &&
        other.runtimeType == runtimeType &&
        other.page == page &&
        other.perPage == perPage &&
        other.total == total &&
        other.totalPages == totalPages &&
        other.data == data &&
        other.support == support;
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType, page, perPage, total, totalPages, data, support);
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
