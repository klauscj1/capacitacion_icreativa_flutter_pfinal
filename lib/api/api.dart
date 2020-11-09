import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:proyecto_final_capacitacion/models/tipos_model.dart';

class Api {
  final String url = "http://localhost:3000/";
  Future<List<TiposModel>> getTiposProductos() async {
    try {
      var response = await http.get(url + "tipos_productos");
      var jsonData = json.decode(response.body);
      print(jsonData);
      List<TiposModel> tipos = new Tipos.fromJsonList(jsonData["tipos"]).items;
      print(tipos);
      return tipos;
    } catch (error) {
      print('El error en getTiposProductos es: $error');
      return null;
    }
  }
}
