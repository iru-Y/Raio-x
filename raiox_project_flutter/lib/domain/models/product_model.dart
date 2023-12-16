import 'package:raiox_project/domain/models/enum/product_enum.dart';

class ProductModel {
  String? id;
  ProductEnum? productEnum;
  int? price;
  int? quantity;

  ProductModel({this.id, this.productEnum, this.price, this.quantity});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productEnum = json['description'];
    price = json['price'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.productEnum;
    data['price'] = this.price;
    data['quantity'] = this.quantity;
    return data;
  }
}
