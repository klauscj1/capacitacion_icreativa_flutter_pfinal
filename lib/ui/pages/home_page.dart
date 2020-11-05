import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proyecto_final_capacitacion/models/principal_model.dart';
import 'package:proyecto_final_capacitacion/ui/widgets/principal_widget.dart';
import 'package:proyecto_final_capacitacion/ui/widgets/tipos_chip_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(
            spacing: 10.0,
            children: [
              TipoChip(
                titulo: 'Salads',
                seleccionado: true,
              ),
              TipoChip(
                titulo: 'Soups',
                seleccionado: false,
              ),
              TipoChip(
                titulo: 'Grillet',
                seleccionado: false,
              ),
            ],
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
      color: Colors.amber,
    );
  }

  Widget navigationBar(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .11,
      color: Colors.black,
    );
  }
}
