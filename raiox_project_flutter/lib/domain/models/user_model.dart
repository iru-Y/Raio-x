import 'package:raiox_project/domain/models/product_model.dart';

class UserModel {
  String? id;
  String? name;
  String? password;
  List<ProductModel>? products;

  UserModel({this.id, this.name, this.password, this.products});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    password = json['password'];
    if (json['products'] != null) {
      products = <ProductModel>[];
      json['products'].forEach((v) {
        products!.add(new ProductModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['password'] = this.password;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}