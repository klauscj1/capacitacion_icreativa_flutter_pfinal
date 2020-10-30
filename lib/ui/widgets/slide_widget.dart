import 'package:flutter/material.dart';

class SlideWidget extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String subtitulo;
  final bool esFinal;
  const SlideWidget({
    Key key,
    @required this.imagen,
    @required this.titulo,
    @required this.subtitulo,
    this.esFinal = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagen),
              SizedBox(
                height: 50,
              ),
              Text(
                titulo,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                subtitulo,
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: Theme.of(context).primaryColor.withOpacity(.7),
                    ),
              ),
              esFinal
                  ? SizedBox(
                      height: 60,
                    )
                  : Container(),
              esFinal
                  ? RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: Theme.of(context).primaryColor,
                          )),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        print('deberia llevarme al login');
                        Navigator.pushReplacementNamed(context, 'login');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 40),
                        child: Text(
                          'Comenzar',
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
