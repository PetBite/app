import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 35.0, 0.0, 5.0),
            child: Text(
              'Error 404',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 25.0),
            child: Text(
              'Page Not Found',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Sorry, the page you are looking for does not exist.',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(3.0),
            child: Text(
              'Maybe the dog ate it...',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 20.0),
                child: Image.asset(
                  'assets/images/Maya_nom_watermelon.png',
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
