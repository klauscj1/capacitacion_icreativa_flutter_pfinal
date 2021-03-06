import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final_capacitacion/models/blocs/general_bloc.dart';
import 'package:proyecto_final_capacitacion/models/principal_model.dart';
import 'package:proyecto_final_capacitacion/models/tipos_model.dart';
import 'package:proyecto_final_capacitacion/ui/widgets/navigator_bar_widget.dart';
import 'package:proyecto_final_capacitacion/ui/widgets/principal_widget.dart';
import 'package:proyecto_final_capacitacion/ui/widgets/second_widget.dart';
import 'package:proyecto_final_capacitacion/ui/widgets/tipos_chip_widget.dart';

import '../../models/principal_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('se redibuja todo el widget');
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(child: appbar(context)),
            titulos(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            tipos(context),
            Expanded(
              child: PageView(
                children: [
                  PrincipalWidget(producto: principales[0]),
                  PrincipalWidget(producto: principales[1]),
                  PrincipalWidget(producto: principales[2]),
                ],
              ),
            ),
            secundarios(context),
            // secundarios2(context),
            navigationBar(context)
          ],
        ),
      ),
    );
  }

  Widget appbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.alignLeft,
            color: Theme.of(context).primaryColor.withOpacity(.7),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.search,
            color: Theme.of(context).primaryColor.withOpacity(.7),
          ),
        )
      ],
    );
  }

  Widget titulos(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delicious salad',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'We made fresh and Healthly food',
            style: TextStyle(fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  Widget tipos(BuildContext context) {
    print('se dibuja tipos');
    final bloc = Provider.of<GeneralBloc>(context, listen: true);
    List<Widget> tiposUI = [];
    for (TiposModel tp in bloc.tipos) {
      tiposUI.add(TipoChip(
          seleccionado: tp.id == bloc.tipoSeleccionado.id ? true : false,
          tipo: tp));
    }
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Wrap(
              spacing: 10.0,
              children: tiposUI,
            ),
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.sortAmountUp),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget secundarios(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .33,
      child: PageView(
        controller: PageController(
          viewportFraction: 0.3,
          initialPage: 2,
        ),
        children: [
          SecondWidget(producto: principales[3]),
          SecondWidget(producto: principales[4]),
          SecondWidget(producto: principales[5]),
          SecondWidget(producto: principales[6]),
        ],
      ),
    );
  }

  Widget navigationBar(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .11,
      child: Center(child: NavitagorBar()),
    );
  }
}
