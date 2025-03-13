class UserInfoResponse {
  final String? name;
  final String? job;
  final String? id;
  final String? createdAt;
  const UserInfoResponse({this.name, this.job, this.id, this.createdAt});
  UserInfoResponse copyWith(
      {String? name, String? job, String? id, String? createdAt}) {
    return UserInfoResponse(
        name: name ?? this.name,
        job: job ?? this.job,
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt);
  }

  Map<String, Object?> toJson() {
    return {'name': name, 'job': job, 'id': id, 'createdAt': createdAt};
  }

  static UserInfoResponse fromJson(Map<String, Object?> json) {
    return UserInfoResponse(
        name: json['name'] == null ? null : json['name'] as String,
        job: json['job'] == null ? null : json['job'] as String,
        id: json['id'] == null ? null : json['id'] as String,
        createdAt:
            json['createdAt'] == null ? null : json['createdAt'] as String);
  }

  @override
  String toString() {
    return '''UserInfoResponse(
                name:$name,
job:$job,
id:$id,
createdAt:$createdAt
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is UserInfoResponse &&
        other.runtimeType == runtimeType &&
        other.name == name &&
        other.job == job &&
        other.id == id &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, name, job, id, createdAt);
  }
}
