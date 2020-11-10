import 'package:flutter/material.dart';
import 'package:proyecto_final_capacitacion/models/tipos_model.dart';

class GeneralBloc with ChangeNotifier {
  //declarar las variables que van a utilizar de forma privada

  List<TiposModel> _tipos = [];
  TiposModel _tipoSeleccionado = TiposModel();
  //crear get y set (en set poner notifyListeners(); )
  List<TiposModel> get tipos => this._tipos;

  set tipos(List<TiposModel> tipos) {
    this._tipos = tipos;
    this._tipoSeleccionado = tipos[0];
    notifyListeners();
  }

  TiposModel get tipoSeleccionado => this._tipoSeleccionado;

  set tipoSeleccionado(TiposModel tipo) {
    this._tipoSeleccionado = tipo;
    notifyListeners();
  }
}
