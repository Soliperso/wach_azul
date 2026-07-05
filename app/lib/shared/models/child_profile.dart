class ChildProfile {
  const ChildProfile({
    required this.name,
    required this.avatar,
    required this.languageName,
  });

  final String name;
  final String avatar;
  final String languageName;

  factory ChildProfile.fromJson(Map<String, Object?> json) {
    return ChildProfile(
      name: json['name'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '🦊',
      languageName: json['languageName'] as String? ?? 'Tamazight',
    );
  }

  Map<String, Object?> toJson() {
    return {'name': name, 'avatar': avatar, 'languageName': languageName};
  }
}
