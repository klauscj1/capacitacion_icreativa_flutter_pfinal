import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavitagorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .83,
      height: size.height * .07,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              print('presionó el boton de home');
            },
            icon: FaIcon(
              FontAwesomeIcons.home,
              color: Theme.of(context).accentColor,
            ),
          ),
          IconButton(
            onPressed: () {
              print('presionó el boton de notas');
            },
            icon: FaIcon(
              FontAwesomeIcons.folder,
              color: Theme.of(context).accentColor,
            ),
          ),
          IconButton(
            onPressed: () {
              print('presionó el boton de mensaje');
            },
            icon: FaIcon(
              FontAwesomeIcons.sms,
              color: Theme.of(context).accentColor,
            ),
          ),
          IconButton(
            onPressed: () {
              print('presionó el boton de user');
            },
            icon: FaIcon(
              FontAwesomeIcons.user,
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
