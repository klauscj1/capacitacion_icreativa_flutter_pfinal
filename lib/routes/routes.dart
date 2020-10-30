import 'package:flutter/material.dart';
import 'package:proyecto_final_capacitacion/ui/pages/login_page.dart';
import 'package:proyecto_final_capacitacion/ui/pages/onboarding_page.dart';

Map<String, WidgetBuilder> getRutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => OnboardingPage(),
    'login': (BuildContext context) => LoginPage(),
  };
}
