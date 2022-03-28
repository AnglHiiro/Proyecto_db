import 'dart:ffi';

class Ingredient {
  int? idIngredient;
  String? name;
  String? description;
  bool? type;
  double? price;
  bool? added;

  Ingredient({
    this.idIngredient,
    this.name,
    this.description,
    this.type,
    this.price,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      idIngredient: json['idIngredient'],
      name: json['name'],
      description: json['description'],
      type: json['type'],
      price: json['price'],
    );
  }
}
