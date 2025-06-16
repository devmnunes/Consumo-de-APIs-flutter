class ProdutoModel {
  final String title;
  final String description;
  final String category;
  final double price;
  final double rating;
  final String brand;
  final List<String> images;

  ProdutoModel({
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.rating,
    required this.brand,
    required this.images,
  });

  factory ProdutoModel.fromMap(Map<String, dynamic> map) {
    return ProdutoModel(
      title: map['title'],
      description: map['description'],
      category: map['category'],
      price: map['price'] * 1.0,
      rating: map['rating'] * 1.0,
      brand: map['brand'],
      images: List<String>.from((map['images'] as List)),
      );
  }
}
