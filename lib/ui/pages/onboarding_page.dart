import 'package:flutter/material.dart';
import 'package:proyecto_final_capacitacion/ui/widgets/slide_widget.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        children: [
          SlideWidget(
              imagen: 'assets/onboarding/onb1.png',
              titulo: 'Titulo 1',
              subtitulo:
                  'Ullamco ullamco veniam aliquip ut amet. Fugiat nulla sint est ea fugiat incididunt commodo anim est mollit aliqua nulla. '),
          SlideWidget(
            imagen: 'assets/onboarding/onb2.png',
            titulo: 'Titulo 2',
            subtitulo:
                'Ullamco ullamco veniam aliquip ut amet. Fugiat nulla sint est ea fugiat incididunt commodo anim est mollit aliqua nulla. ',
          ),
          SlideWidget(
            imagen: 'assets/onboarding/onb3.png',
            titulo: 'Titulo 3',
            subtitulo:
                'Ullamco ullamco veniam aliquip ut amet. Fugiat nulla sint est ea fugiat incididunt commodo anim est mollit aliqua nulla. ',
          ),
          SlideWidget(
            imagen: 'assets/onboarding/onb4.png',
            titulo: 'Titulo 4',
            subtitulo:
                'Ullamco ullamco veniam aliquip ut amet. Fugiat nulla sint est ea fugiat incididunt commodo anim est mollit aliqua nulla. ',
            esFinal: true,
          ),
        ],
      ),
    );
  }
}
