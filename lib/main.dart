import 'package:flutter/material.dart';
import 'package:proyecto_final_capacitacion/routes/routes.dart';
import 'package:proyecto_final_capacitacion/ui/pages/onboarding_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        primaryColor: Color(0Xff030303),
        // primaryColor: Colors.red,
        accentColor: Color(0xffF4F4F4),
      ),
      initialRoute: '/',
      routes: getRutas(),
    );
  }
}
