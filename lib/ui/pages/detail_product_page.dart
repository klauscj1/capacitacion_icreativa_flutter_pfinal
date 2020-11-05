import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proyecto_final_capacitacion/models/principal_model.dart';

class DetailProductPage extends StatelessWidget {
  final PrincipalModel producto;
  DetailProductPage({this.producto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      children: [
        _appBar(context),
        Text(
          producto.nombre,
          style: Theme.of(context).textTheme.headline4,
        ),
        Hero(
          tag: 'prod-${producto.id}',
          child: Image.asset(producto.image),
        )
      ],
    );
  }

  Widget _appBar(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.chevronLeft),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.ellipsisV),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
