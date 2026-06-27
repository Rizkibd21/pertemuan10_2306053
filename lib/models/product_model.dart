import 'dart:convert';

class ProductModel {
  final String name;
  final String description;
  final int price;
  final String image;

  ProductModel({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  //objek ke map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'image': image,
    };
  }

  //map ke objek
  factory ProductModel.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProductModel(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      price: map['price'] ?? 0,
      image: map['image'] ?? '',
    );
  }

  //objek ke json string
  String toJson() => json.encode(toMap());

  //json string ke objek
  factory ProductModel.fromJson(String source) {
    return ProductModel.fromMap(
      jsonDecode(source)
    );
  }
}