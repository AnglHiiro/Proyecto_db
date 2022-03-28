import 'Platillo.dart';

class Pedido {
  String numMesa;
  List<Platillo> platillos;
  DateTime fecha;
  String empleado;
  String anotaciones;
  String codeEspecial;

  Pedido({
    required this.numMesa,
    required this.platillos,
    required this.fecha,
    required this.empleado,
    required this.anotaciones,
    required this.codeEspecial,
  });

  factory Pedido.fromJson(Map<String, dynamic> json) {
    return Pedido(
      numMesa: json['numMesa'],
      platillos: (json['platillos'] as List<dynamic>)
          .map((e) => Platillo.fromJson(e))
          .toList(),
      fecha: DateTime.parse(json['fecha']),
      empleado: json['empleado'],
      anotaciones: json['anotaciones'],
      codeEspecial: json['codeEspecial'],
    );
  }
}
