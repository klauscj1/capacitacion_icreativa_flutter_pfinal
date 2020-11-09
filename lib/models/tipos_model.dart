class Tipos {
  Tipos();
  List<TiposModel> items = new List();
  Tipos.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;
    for (var item in jsonList) {
      final tipo = new TiposModel.fromJson(item);
      items.add(tipo);
    }
  }
}

class TiposModel {
  TiposModel({
    this.id,
    this.nombre,
  });

  int id;
  String nombre;

  factory TiposModel.fromJson(Map<String, dynamic> json) => TiposModel(
        id: json["id"],
        nombre: json["nombre"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
      };
}
