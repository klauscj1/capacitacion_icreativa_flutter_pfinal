import 'package:flutter/material.dart';
import 'package:proyecto_final_capacitacion/models/principal_model.dart';
import 'package:proyecto_final_capacitacion/ui/pages/detail_product_page.dart';

class PrincipalWidget extends StatelessWidget {
  final PrincipalModel producto;
  const PrincipalWidget({Key key, @required this.producto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .28,
      color: Colors.transparent,
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 0.0, right: 20.0, top: 50, bottom: 50),
              child: GestureDetector(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                        topRight: Radius.circular(100),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: size.width * .30,
                        ),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  producto.nombre,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 2,
                                ),
                                Text(producto.descripcion),
                                Text(
                                  '\$${producto.precio}',
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: size.width * .08,
                            ),
                            GestureDetector(
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Theme.of(context).accentColor,
                                  ),
                                ),
                              ),
                              onTap: () {
                                print('clic en el btn add');
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                DetailProductPage(
                                  producto: producto,
                                )));
                  }),
            ),
          ),
          Positioned(
            left: size.width * -.20,
            top: 30,
            bottom: 30,
            child: Hero(
              tag: 'prod-${producto.id}',
              child: GestureDetector(
                child: Image.asset(
                  producto.image,
                  width: size.width * .6,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => DetailProductPage(
                                producto: producto,
                              )));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
