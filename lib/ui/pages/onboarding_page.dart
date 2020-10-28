import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            color: Colors.blue,
            child: Center(
                child: Text(
              'Slide 1',
              style: TextStyle(fontSize: 40),
            )),
          ),
          Container(
            color: Colors.red,
            child: Center(
                child: Text(
              'Slide 2',
              style: TextStyle(fontSize: 40),
            )),
          ),
          Container(
            color: Colors.orange,
            child: Center(
                child: Text(
              'Slide 3',
              style: TextStyle(fontSize: 40),
            )),
          ),
          Container(
            color: Colors.amber,
            child: Center(
                child: Text(
              'Slide 4',
              style: TextStyle(fontSize: 40),
            )),
          )
        ],
      ),
    );
  }
}
