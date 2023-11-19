import 'package:app/features/home/presentation/info_box.dart';
import 'package:app/features/pet_details/presentation/pet_details.dart';
import 'package:flutter/material.dart';

import '../domain/pet_db.dart';

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
          icon: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/navbar_filler1.jpg')),
          color: Colors.white,
          onPressed: () {},
        )),
  );
}

Container _buildGenderIcon(String gender) {
  switch (gender) {
    case 'male':
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.blue,
        ),
        child: const Icon(Icons.male, color: Colors.white, size: 40),
      );
    case 'female':
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.blue,
        ),
        child: const Icon(Icons.female, color: Colors.white, size: 40),
      );
    default:
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.blue,
        ),
        child: const Icon(Icons.circle, color: Colors.white, size: 40),
      );
  }
}

class _HomePageState extends State<HomePage> {
  bool _showPetBar = false;
  List<String> petFoodIDs = PetDB.getPetIDs();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(children: <Widget>[
        if (_showPetBar)
          Container(
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: generatePetItem(6),
            ),
          ),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(60),
          ),
          child: GestureDetector(
            onVerticalDragUpdate: (details) {
              int sensitivity = 4;
              if (details.delta.dy < sensitivity) {
                setState(() {
                  _showPetBar = false;
                });
              } else if (details.delta.dy > sensitivity) {
                setState(() {
                  _showPetBar = true;
                });
              }
            },
            child: Image.asset(petDB.getPetById('pet-001').imagePath,
                width: 300, height: 309),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
          padding:
              const EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // Shadow direction: bottom right
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    petDB.getPetById('pet-001').name,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    petDB.getPetById('pet-001').breed,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF006A60)),
                  )
                ],
              ),
              _buildGenderIcon(petDB.getPetById('pet-001').gender),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.pets),
            const SizedBox(width: 10),
            Text('About ${petDB.getPetById('pet-001').name}',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
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
              InfoBox(
                  title: 'Age',
                  value: '${petDB.getPetById('pet-001').age}',
                  bgColor: const Color(0xFF006A60)),
              InfoBox(
                  title: 'Height',
                  value: '${petDB.getPetById('pet-001').height} cm',
                  bgColor: const Color(0xFF006A60)),
              InfoBox(
                  title: 'Weight',
                  value: '${petDB.getPetById('pet-001').weight} kg',
                  bgColor: const Color(0xFF006A60)),
              InfoBox(
                  title: 'Color',
                  value: petDB.getPetById('pet-001').color,
                  bgColor: const Color(0xFF006A60)),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 50, right: 50),
          child: SizedBox(
            width: 500,
            height: 210,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xFF74F8E5),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: const <Widget>[
                    Text(
                      'Sample Meal Plan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10), // Spacing between text widgets
                    Text(
                      'Morning: 150g (approx.) high-quality commercial dog food (kibble or wet) balanced for adult or senior dogs. Water available at all times.',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Evening: 150g (approx.) high-quality commercial dog food (kibble or wet) balanced for adult or senior dogs. Water available at all times.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
