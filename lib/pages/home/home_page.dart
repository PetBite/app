import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/homePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showPetBar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(children: <Widget>[
        GestureDetector(
          onVerticalDragUpdate: (details) {
            // Detects swipe direction
            if (details.delta.dy > 0) {
              // Swiped Down
              setState(() {
                _showPetBar = true;
              });
            } else if (details.delta.dy < 0) {
              // Swiped Up
              setState(() {
                _showPetBar = false;
              });
            }
          },
          child: Center(child: Text('Swipe down to show navbar')),
        ),
        if (_showPetBar)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              title: Text('Navbar'),
              backgroundColor: Colors.blue.withOpacity(0.8),
            ),
          ),
        const SizedBox(height: 30),
        Image.asset('assets/images/homepagepic.png', width: 400, height: 210),
        Container(
          padding:
              const EdgeInsets.only(left: 50.0, right: 50, top: 20, bottom: 20),
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0), // shadow direction: bottom right
                )
              ],
            ),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Kurt - Siberian Husky',
                    style: TextStyle(fontSize: 25),
                  ),
                  Icon(Icons.male, color: Colors.black, size: 40)
                ]),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
              top: 10.0, left: 30.0, right: 30.0, bottom: 20.0),
          alignment: Alignment.center,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 60,
                  width: 60,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(color: Colors.greenAccent),
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: ListView(
                          children: const <Widget>[Text('Age'), Text('9')]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(color: Colors.greenAccent),
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: ListView(children: const <Widget>[
                        Text('Height'),
                        Text('53 cm')
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(color: Colors.greenAccent),
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: ListView(children: const <Widget>[
                        Text('Weight'),
                        Text('20 kg')
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(color: Colors.greenAccent),
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: ListView(children: const <Widget>[
                        Text('Color'),
                        Text('White')
                      ]),
                    ),
                  ),
                ),
              ]),
        ),
        Container(
          margin: const EdgeInsets.only(left: 50, right: 50),
          child: SizedBox(
            width: 300,
            height: 200,
            child: DecoratedBox(
                decoration: const BoxDecoration(color: Colors.lightBlueAccent),
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: ListView(children: const <Widget>[
                    Text('Sample Meal Plan'),
                    Text(
                        'Morning: 150g (approx.) high-quality commercial dog food (kibble or wet) balanced for adult or senior dogs Water available at all times.'),
                    Text(
                        'Evening: 150g (approx.) high-quality commercial dog food (kibble or wet) balanced for adult or senior dogs Water available at all times.')
                  ]),
                )),
          ),
        ),
      ])),
    );
  }
}
