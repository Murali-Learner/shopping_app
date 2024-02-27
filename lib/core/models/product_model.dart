class Product {
  final String name;
  final int quantity;
  final String image;
  final double price;

  Product({
    required this.name,
    required this.quantity,
    required this.image,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      quantity: json['quantity'],
      image: json['image'],
      price: json['price'].toDouble(),
    );
  }
}
