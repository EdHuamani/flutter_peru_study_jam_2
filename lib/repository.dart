class Repository {
  Repository(
      {int id,
      String name,
      String description,
      int stars,
      String language,
      int forks})
      : this.id = id ?? 0,
        this.name = name ?? '',
        this.description = description ?? '',
        this.stars = stars ?? 0,
        this.language = language ?? '',
        this.forks = forks ?? 0;

  static String token = "fa3b61048b939590931b6c99548a3e82a1aaaf71";
  final int id;
  final String name;
  final String description;
  final int stars;
  final String language;
  final int forks;

  factory Repository.fromJson(Map<String, dynamic> json) => Repository(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        stars: json['stars'],
        language: json['language'] as String,
        forks: json['forks'],
      );
}
