

import 'package:meta/meta.dart';
import 'dart:convert';
//dùng để chuyển json thành danh sách list 
 List<product> productFromJson(String str) => List<product>.from(json.decode(str).map((x) => product.fromJson(x)));

 String productToJson(List<product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Product {
//     Product({
//         required this.title,
//         required this.price,
//         required this.decription,
//         required this.image,
//         required this.color,
//         required this.size,
//         required this.id,
//     });

//     String title;
//     int price;
//     String decription;
//     String image;
//     String color;
//     int size;
//     String id;

//     factory Product.fromJson(Map<String, dynamic> json) => Product(
//         title: json["title"],
//         price: json["price"],
//         decription: json["decription"],
//         image: json["image"],
//         color: json["color"],
//         size: json["size"],
//         id: json["id"],
//     );

//     Map<String, dynamic> toJson() => {
//         "title": title,
//         "price": price,
//         "decription": decription,
//         "image": image,
//         "color": color,
//         "size": size,
//         "id": id,
//     };
// }





class product {
  String? title;
  String? image;
  int? price;
  String? description;
  int? size;
  String? color;
  String? id;

  product(
      {this.title,
      this.image,
      this.price,
      this.description,
      this.size,
      this.color,
      this.id});

  product.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    price = json['price'];
    description = json['description'];
    size = json['size'];
    color = json['color'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['image'] = this.image;
    data['price'] = this.price;
    data['description'] = this.description;
    data['size'] = this.size;
    data['color'] = this.color;
    data['id'] = this.id;
    return data;
  }
}

