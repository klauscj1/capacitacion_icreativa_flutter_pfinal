import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final_capacitacion/models/blocs/general_bloc.dart';
import 'package:proyecto_final_capacitacion/models/tipos_model.dart';

class TipoChip extends StatelessWidget {
  final TiposModel tipo;
  final bool seleccionado;

  TipoChip({@required this.tipo, @required this.seleccionado});
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<GeneralBloc>(context);
    return GestureDetector(
      child: Chip(
        backgroundColor: seleccionado
            ? Theme.of(context).primaryColor
            : Theme.of(context).accentColor,
        label: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Text(
            tipo.nombre,
            style: TextStyle(
              color: !seleccionado
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).accentColor,
            ),
          ),
        ),
      ),
      onTap: () {
        bloc.tipoSeleccionado = tipo;
        print('dio clic en ${tipo.nombre}');
      },
    );
  }
}
