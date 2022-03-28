import 'package:restaurant/models/Ingredient.dart';

class Platillo {
  int? idPlatillo;
  String? name;
  String? description;
  double? price;
  String? imageUrl;
  List<Ingredient> listaIngredientes;
  int? idCategory;

  Platillo({
    required this.idPlatillo,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.listaIngredientes,
    required this.idCategory,
  });

  factory Platillo.fromJson(Map<String, dynamic> json) {
    return Platillo(
      idPlatillo: json['idPlatillo'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      listaIngredientes: (json['listaIngredientes'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e))
          .toList(),
      idCategory: json['category'],
    );
  }
}
