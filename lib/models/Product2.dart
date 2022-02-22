import 'package:meta/meta.dart';
import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    required this.title,
    required this.price,
    required this.decription,
    required this.image,
    required this.color,
    required this.size,
    required this.id,
  });

  String title;
  int price;
  String decription;
  String image;
  int color;
  int size;
  String id;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        title: json["title"],
        price: json["price"],
        decription: json["decription"],
        image: json["image"],
        color: json["color"],
        size: json["size"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "price": price,
        "decription": decription,
        "image": image,
        "color": color,
        "size": size,
        "id": id,
      };
}
