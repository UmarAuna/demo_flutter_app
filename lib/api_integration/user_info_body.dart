class UserInfoBody {
  final String? name;
  final String? job;
  const UserInfoBody({this.name, this.job});
  UserInfoBody copyWith({String? name, String? job}) {
    return UserInfoBody(name: name ?? this.name, job: job ?? this.job);
  }

  Map<String, Object?> toJson() {
    return {'name': name, 'job': job};
  }

  static UserInfoBody fromJson(Map<String, Object?> json) {
    return UserInfoBody(
        name: json['name'] == null ? null : json['name'] as String,
        job: json['job'] == null ? null : json['job'] as String);
  }

  @override
  String toString() {
    return '''UserInfoBody(
                name:$name,
job:$job
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is UserInfoBody &&
        other.runtimeType == runtimeType &&
        other.name == name &&
        other.job == job;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, name, job);
  }
}
