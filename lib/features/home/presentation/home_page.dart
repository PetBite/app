import 'package:app/pages/pet_details/pet_details.dart';
import 'package:flutter/material.dart';

import '../../data/pet_db.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/homePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Widget> generatePetItem(int count) {
  return List.generate(
    count,
    (index) => Ink(
        decoration: const ShapeDecoration(
          color: Colors.lightBlue,
          shape: CircleBorder(),
        ),
        child: IconButton(
          iconSize: 48.0,
          icon: Image.asset('assets/images/navbar_filler1.jpg'),
          color: Colors.white,
          onPressed: () {},
        )),
  );
}

class _HomePageState extends State<HomePage> {
  bool _showPetBar = false;
  List<String> petFoodIDs = PetDB.getPetIDs();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onVerticalDragEnd: (details) {
        // Only react to gestures when at the top of the ListView
        if (_scrollController.position.atEdge &&
            _scrollController.position.pixels == 0) {
          if (details.primaryVelocity! > 0) {
            setState(() {
              _showPetBar = true;
            });
          } else if (details.primaryVelocity! < 0) {
            setState(() {
              _showPetBar = false;
            });
          }
        }
      },
      child: SafeArea(
          child: ListView(controller: _scrollController, children: <Widget>[
        if (_showPetBar)
          Container(
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: generatePetItem(6),
            ),
          ),
        const SizedBox(height: 30),
        Image.asset(petDB.getPetById('pet-001').imagePath,
            width: 400, height: 210),
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
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '${petDB.getPetById('pet-001').name} - ${petDB.getPetById('pet-001').breed}',
                    style: const TextStyle(fontSize: 25),
                  ),
                  if (petDB.getPetById('pet-001').gender == 'male') ...[
                    const Icon(Icons.male, color: Colors.black, size: 40),
                  ] else if (petDB.getPetById('pet-001').gender ==
                      'female') ...[
                    const Icon(Icons.female, color: Colors.black, size: 40),
                  ] else ...[
                    const Icon(Icons.circle, color: Colors.black, size: 40),
                  ],
                  //const Icon(Icons.male, color: Colors.black, size: 40)
                ]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.pets),
            const SizedBox(width: 10),
            Text('About ${petDB.getPetById('pet-001').name}'),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, PetDetails.routeName);
                },
                icon: const Icon(Icons.edit_note))
          ],
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
                      child: ListView(children: <Widget>[
                        const Text('Age'),
                        Text('${petDB.getPetById('pet-001').age}')
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
                      child: ListView(children: <Widget>[
                        const Text('Height'),
                        Text('${petDB.getPetById('pet-001').height} cm')
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
                      child: ListView(children: <Widget>[
                        const Text('Weight'),
                        Text('${petDB.getPetById('pet-001').weight} kg')
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
                      child: ListView(children: <Widget>[
                        const Text('Color'),
                        Text(petDB.getPetById('pet-001').color)
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
    ));
  }
}
