import 'package:flutter/material.dart';

class TipoChip extends StatelessWidget {
  final String titulo;
  final bool seleccionado;

  TipoChip({@required this.titulo, @required this.seleccionado});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Chip(
        backgroundColor: seleccionado
            ? Theme.of(context).primaryColor
            : Theme.of(context).accentColor,
        label: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Text(
            titulo,
            style: TextStyle(
              color: !seleccionado
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).accentColor,
            ),
          ),
        ),
      ),
      onTap: () {
        print('dio clic en $titulo');
      },
    );
  }
}
