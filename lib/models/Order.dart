import 'package:restaurant/models/Platillo.dart';

class Order {
  int? idOrder;
  int? table;
  List<Platillo> platillos;
  List<String> notesPlatillos;
  String? code;
  String? waiter;
  DateTime date;

  Order({
    required this.idOrder,
    required this.table,
    required this.platillos,
    required this.notesPlatillos,
    required this.code,
    required this.waiter,
    required this.date,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      idOrder: json['idOrder'],
      table: json['idTable'],
      platillos: (json['platillos'] as List<dynamic>)
          .map((e) => Platillo.fromJson(e))
          .toList(),
      notesPlatillos: json['notesPlatillos'],
      code: json['code'],
      waiter: json['waiter'],
      date: DateTime.parse(json['date']),
    );
  }
}
