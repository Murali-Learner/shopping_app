class ProfileOption {
  final String name;
  final String icon;

  ProfileOption({
    required this.name,
    required this.icon,
  });

  factory ProfileOption.fromJson(Map<String, dynamic> json) {
    return ProfileOption(
      name: json['name'],
      icon: json['icon'],
    );
  }
}
