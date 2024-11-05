class OthersModel {
  final int? id;
  final String? name;
  final String? image;

  OthersModel({
    this.id,
    this.name,
    this.image,
  });

  factory OthersModel.fromJson(Map<String, dynamic> json) {
    return OthersModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
    );
  }
}
