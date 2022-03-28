class Category {
  int? idCategory;
  String? name;
  String? description;

  Category({
    this.idCategory,
    this.name,
    this.description,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      idCategory: json['idCategory'],
      name: json['name'],
      description: json['description'],
    );
  }
}
