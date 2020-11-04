import 'package:flutter/material.dart';

class PrincipalWidget extends StatelessWidget {
  const PrincipalWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .28,
      color: Colors.transparent,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 0.0, right: 20.0, top: 50, bottom: 50),
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
                SizedBox(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Delicius Salad'),
                    Text('Chicken with Avocado'),
                    Text('\$32.00')
                  ],
                ),
                Container(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
