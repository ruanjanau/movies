class NewsModel {
  final int? id;
  final String? title;
  final String? image;
  final String? description;
  final String? reference;
  final String? date;

  NewsModel({
    this.id,
    this.title,
    this.image,
    this.description,
    this.reference,
    this.date,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      id: json['id'] as int,
      title: json['title'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      reference: json['reference'] as String,
      date: json['date'] as String,
    );
  }
}
