class ProdutoModel {
  final String title;
  final String description;
  final String thumbnail;
  final String category;
  final double price;
  final double rating;
  final List<String> images;

  ProdutoModel({
    required this.title,
    required this.description,
    required this.thumbnail,
    required this.category,
    required this.price,
    required this.rating,
    required this.images,
  });

  factory ProdutoModel.fromMap(Map<String, dynamic> map) {
    return ProdutoModel(
      title: map['title'],
      description: map['description'],
      category: map['category'],
      thumbnail: map['thumbnail'],
      price: map['price'] * 1.0,
      rating: map['rating'] * 1.0,
      images: List<String>.from((map['images'] as List)),
    );
  }
}
