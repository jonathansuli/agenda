import 'dart:convert';

ProductoModel productoModelFromJson(String str) =>
    ProductoModel.fromJson(json.decode(str));

String productoModelToJson(ProductoModel data) => json.encode(data.toJson());

class ProductoModel {
  String id;
  String especialidad;
  int frecuencia;
  int descanso;
  double desde_maniana;
  double hasta_maniana;
  double desde_tarde;
  double hasta_tarde;
  bool dia_disp_lunes;
  bool dia_disp_martes;
  bool dia_disp_miercoles;
  bool dia_disp_jueves;
  bool dia_disp_viernes;
  bool dia_disp_sabado;
  bool dia_disp_domingo;

  ProductoModel({
    this.id,
    this.especialidad,
    this.frecuencia = 000,
    this.descanso = 0,
    this.desde_maniana = 0,
    this.hasta_maniana = 0,
    this.desde_tarde = 0,
    this.hasta_tarde = 0,
    this.dia_disp_lunes = false,
    this.dia_disp_martes = false,
    this.dia_disp_miercoles = false,
    this.dia_disp_jueves = false,
    this.dia_disp_viernes = false,
    this.dia_disp_sabado = false,
    this.dia_disp_domingo = false,
  });

  factory ProductoModel.fromJson(Map<String, dynamic> json) =>
      new ProductoModel(
        id: json["id"],
        especialidad: json["especialidad"],
        frecuencia: json["frecuencia"],
        descanso: json["descanso"],
        desde_maniana: json["desde_mañana"],
        hasta_maniana: json["hasta_mañana"],
        desde_tarde: json["desde_tarde"],
        hasta_tarde: json["hasta_tarde"],
        dia_disp_lunes: json["dia_disp_lunes"],
        dia_disp_martes: json["dia_disp_martes"],
        dia_disp_miercoles: json["dia_disp_miercoles"],
        dia_disp_jueves: json["dia_disp_jueves"],
        dia_disp_viernes: json["dia_disp_viernes"],
        dia_disp_sabado: json["dia_disp_sabado"],
        dia_disp_domingo: json["dia_disp_domingo"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "Especialidad": especialidad,
        "frecuencia": frecuencia,
        "descanso": descanso,
        "desde_maniana": desde_maniana,
        "hasta_maniana": hasta_maniana,
        "desde_tarde": desde_tarde,
        "hasta_tarde": hasta_tarde,
        "dia_disp_lunes": dia_disp_lunes,
        "dia_disp_martes": dia_disp_martes,
        "dia_disp_miercoles": dia_disp_miercoles,
        "dia_disp_jueves": dia_disp_jueves,
        "dia_disp_viernes": dia_disp_viernes,
        "dia_disp_sabado": dia_disp_sabado,
        "dia_disp_domingo": dia_disp_domingo,
      };
}
