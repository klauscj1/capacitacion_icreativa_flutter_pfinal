import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proyecto_final_capacitacion/models/principal_model.dart';

class DetailProductPage extends StatelessWidget {
  final PrincipalModel producto;
  DetailProductPage({this.producto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      //padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        children: [
          _appBar(context),
          Container(
            height: size.height * .40,
            color: Colors.transparent,
            child: Hero(
              tag: 'prod-${producto.id}',
              child: Image.asset(producto.image),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          secundariosTextos(context),
          appbarPedido(context)
        ],
      ),
    );
  }

  Widget secundariosTextos(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height * .24,
        color: Theme.of(context).accentColor,
        child: Row(
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  producto.descripcion,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      producto.nombre,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * .07,
                    ),
                    crearbotonesPedido(context, Icons.add, false),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * .001,
                    ),
                    crearbotonesPedido(context, Icons.open_with, false),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * .001,
                    ),
                    crearbotonesPedido(context, Icons.remove, false)
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),
                Text(
                  producto.descripcion+'  '+producto.nombre,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  producto.descripcion+'  '+producto.nombre,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  producto.nombre,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),

                 Row(
                  children: [
                    Text('Delivery Time',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.lock_clock),
                    SizedBox(
                      width: 10,
                    ),
                    Text('25 Mins',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  ],
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget appbarPedido(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height * .14,
        color: Theme.of(context).accentColor,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                 Text('Total Price',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                          '\$24.50',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                        ),
                        SizedBox(
                      width: MediaQuery.of(context).size.height * .23,
                    ),

                        Container(
                      width: 50,
                      height: 50,
                       decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                    ),
                      child: Center(
                        child: Icon(
                          Icons.shopping_cart,
                          color: Theme.of(context).accentColor,
                        ),
                        ),
                        )
                  ],

                  
                ),
               
                
                        
              ],
              
            )
          
          ],
        ),

        
      ),
    );
  }

  Widget crearbotonesPedido(
      BuildContext context, IconData icono, bool button2style) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Icon(
          icono,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.chevronLeft),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.ellipsisV),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
