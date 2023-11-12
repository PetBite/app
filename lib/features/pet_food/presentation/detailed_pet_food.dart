import 'package:flutter/material.dart';

import '../domain/pet_food_db.dart';

class PetFoodPage extends StatefulWidget {
  const PetFoodPage({Key? key}) : super(key: key);

  static const routeName = '/detailed_pet_food';

  @override
  State<PetFoodPage> createState() => _PetFoodPageState();
}

class _PetFoodPageState extends State<PetFoodPage> {
  List<String> petFoodIDs = PetFoodDB.getPetFoodIDs();

  Widget proConList(List<String> items, IconData icon, Color color) {
    return Column(
      children: items.map(
        (item) {
          return ListTile(
            leading: Icon(icon, color: color),
            title: Text(item),
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          children: [
            const SizedBox(height: 20),
            Image.asset(petFoodDB.getPetFoodById('pet-food-001').imagePath,
                width: 300, height: 300),
            const SizedBox(height: 20),
            Text(
              petFoodDB.getPetFoodById('pet-food-001').name,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Pros:',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                    const SizedBox(height: 10),
                    proConList(petFoodDB.getPetFoodById('pet-food-001').pros,
                        Icons.check_circle_outline, Colors.green),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Cons:',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red)),
                    const SizedBox(height: 10),
                    proConList(petFoodDB.getPetFoodById('pet-food-001').cons,
                        Icons.remove_circle_outline, Colors.red)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
