class UserInfoResponsePut {
  final String? name;
  final String? job;
  final String? updatedAt;
  const UserInfoResponsePut({this.name, this.job, this.updatedAt});
  UserInfoResponsePut copyWith({String? name, String? job, String? updatedAt}) {
    return UserInfoResponsePut(
        name: name ?? this.name,
        job: job ?? this.job,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  Map<String, Object?> toJson() {
    return {'name': name, 'job': job, 'updatedAt': updatedAt};
  }

  static UserInfoResponsePut fromJson(Map<String, Object?> json) {
    return UserInfoResponsePut(
        name: json['name'] == null ? null : json['name'] as String,
        job: json['job'] == null ? null : json['job'] as String,
        updatedAt:
            json['updatedAt'] == null ? null : json['updatedAt'] as String);
  }

  @override
  String toString() {
    return '''UserInfoResponsePut(
                name:$name,
job:$job,
updatedAt:$updatedAt
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is UserInfoResponsePut &&
        other.runtimeType == runtimeType &&
        other.name == name &&
        other.job == job &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, name, job, updatedAt);
  }
}
