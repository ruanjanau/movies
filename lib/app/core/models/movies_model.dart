class MovieData {
  final List<MovieCategory>? data;

  MovieData({
    this.data,
  });

  factory MovieData.fromJson(Map<String, dynamic> json) {
    return MovieData(
      data: (json['data'] as List).map((categoryJson) {
        final categoryKey = categoryJson.keys.first;
        return MovieCategory(
          category: categoryKey,
          movies: (categoryJson[categoryKey] as List)
              .map((movieJson) => Movie.fromJson(movieJson))
              .toList(),
        );
      }).toList(),
    );
  }
}

class MovieCategory {
  final String? category;
  final List<Movie>? movies;

  MovieCategory({
    this.category,
    this.movies,
  });
}

class Movie {
  final int? id;
  final String? name;
  final String? details;
  final double? stars;
  final String? image;

  Movie({
     this.id,
     this.name,
     this.details,
     this.stars,
     this.image,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      name: json['name'],
      details: json['details'],
      stars: json['stars'].toDouble(),
      image: json['image'],
    );
  }
}
