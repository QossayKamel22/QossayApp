class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;

  var imageUrl;

  Product({required this.id, required this.title, required this.price, required this.description, required this.category});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      description: json['description'],
      category: json['category']['name'],
    );
  }
}
