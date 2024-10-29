class MoviesModel {
  final int? id;
  final String? name;
  final String? details;
  final bool? onDisplay;
  final bool? shortly;
  final String? image;
  final double? stars;
  final String? category;

  MoviesModel({
    this.id,
    this.name,
    this.details,
    this.image,
    this.stars,
    this.category,
    this.onDisplay,
    this.shortly,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    return MoviesModel(
      id: json['id'] as int,
      name: json['name'] as String,
      details: json['details'] as String,
      image: json['image'] as String,
      stars: json['stars'] as double,
      category: json['category'] as String,
      onDisplay: json['on_display'] as bool,
      shortly: json['shortly'] as bool,
    );
  }
}
