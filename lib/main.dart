import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final_capacitacion/models/blocs/general_bloc.dart';
import 'package:proyecto_final_capacitacion/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => GeneralBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: ThemeData(
          primaryColor: Color(0Xff030303),
          // primaryColor: Colors.red,
          accentColor: Color(0xffF5F5F5),
        ),
        initialRoute: '/',
        routes: getRutas(),
      ),
    );
  }
}
