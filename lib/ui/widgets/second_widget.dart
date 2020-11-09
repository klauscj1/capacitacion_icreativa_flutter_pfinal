import 'package:flutter/material.dart';
import '../../models/principal_model.dart';
import '../pages/detail_product_page.dart';

class SecondWidget extends StatelessWidget {
  final PrincipalModel producto;
  const SecondWidget({Key key, @required this.producto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: size.height * .26,
        width: size.width * .3,
        child: Stack(
          children: [
            Center(
              child: GestureDetector(
                  child: Container(
                    height: size.height * .20,
                    width: size.width * .24,
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(120),
                        topRight: Radius.circular(120),
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size.height * 0.08,
                        ),
                        Text(
                          producto.nombre.length > 20
                              ? producto.nombre.substring(0, 12) + "..."
                              : producto.nombre,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: size.width * .03),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          producto.descripcion,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: size.width * .025),
                        ),
                        Text(
                          '\$${producto.precio}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
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
            Positioned(
              left: 5,
              right: 5,
              top: size.height * 0.04,
              child: Hero(
                tag: 'prod-${producto.id}x',
                child: GestureDetector(
                  child: Image.asset(
                    producto.image,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                DetailProductPage(
                                  producto: producto,
                                )));
                  },
                ),
              ),
            ),
            Positioned(
              left: size.height * .04,
              bottom: size.height * 0.04,
              child: GestureDetector(
                onTap: () {
                  print('click en add');
                },
                child: Container(
                  width: size.width * .08,
                  height: size.width * .08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
