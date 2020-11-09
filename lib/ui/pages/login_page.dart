import 'package:flutter/material.dart';
import 'package:proyecto_final_capacitacion/api/api.dart';
import 'package:proyecto_final_capacitacion/models/tipos_model.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Center(
        child: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ensaladas',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 80,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Usuario'),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Contraseña'),
            ),
            SizedBox(
              height: 60,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(
                    color: Theme.of(context).primaryColor,
                  )),
              color: Theme.of(context).primaryColor,
              onPressed: () async {
                print('deberia llevarme al login');
                List<TiposModel> tipos = await Api().getTiposProductos();
                print('se tiene ${tipos.length} tipos de platos');
                Navigator.pushReplacementNamed(context, 'home');
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40),
                child: Text(
                  'Iniciar sesion',
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
