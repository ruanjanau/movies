import 'package:movies/app/core/models/others_model.dart';

class MoviesModel {
  final int? id;
  final String? name;
  final String? details;
  final bool? onDisplay;
  final bool? shortly;
  final String? duration;
  final String? cast;
  final String? image;
  final double? stars;
  final String? category;
  final String? video;
  final List<OthersModel>? others;

  MoviesModel({
    this.id,
    this.name,
    this.details,
    this.image,
    this.stars,
    this.duration,
    this.cast,
    this.category,
    this.onDisplay,
    this.shortly,
    this.video,
    this.others,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    return MoviesModel(
      id: json['id'] as int,
      name: json['name'] as String,
      details: json['details'] as String,
      image: json['image'] as String,
      stars: json['stars'] as double,
      duration: json['duration'] as String,
      cast: json['cast'] as String,
      category: json['category'] as String,
      onDisplay: json['on_display'] as bool,
      shortly: json['shortly'] as bool,
      video: json['trailler'] as String,
      others: (json['others'] as List?)
          ?.map((e) => OthersModel.fromJson(e))
          .toList(),
    );
  }
}
