import 'package:app/pages/pet_food/detailed_pet_food.dart';
import 'package:flutter/material.dart';

import '../../data_model/pet_food_db.dart';

/// Displays detailed information about a SampleItem.
class PetFood extends StatefulWidget {
  const PetFood({Key? key}) : super(key: key);

  static const routeName = '/pet_food';

  @override
  State<PetFood> createState() => _PetFoodState();
}

class _PetFoodState extends State<PetFood> {
  List<String> search = ['healthy', 'vet recommended', 'Purina'];
  List<String> petFoodIDs = PetFoodDB.getPetFoodIDs();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Food List'),
      ),
      body: SafeArea(
        child: ListView(children: [
          Row(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue,
                  padding: const EdgeInsets.all(16.0),
                ),
                onPressed: ColorScheme.light,
                child: const Text('Filter'),
              ),
              Flexible(
                flex: 7,
                child: SearchAnchor(builder:
                    (BuildContext context, SearchController controller) {
                  return SearchBar(
                    controller: controller,
                    onTap: () {
                      controller.openView();
                    },
                    leading: const Icon(Icons.search),
                  );
                }, suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
                  return List<ListTile>.generate(3, (int index) {
                    final String word = search.elementAt(index);
                    return ListTile(
                      title: Text(word),
                      onTap: () {
                        setState(() {
                          controller.closeView(word);
                        });
                      },
                    );
                  });
                }),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            height: 700,
            child: GridView.count(
              childAspectRatio: 7 / 6,
              crossAxisCount: 2,
              children: petFoodIDs
                  .map((element) => Container(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Material(
                    elevation: 10,
                    child: _buildItem(petFoodDB.getPetFoodById(element).id, petFoodDB.getPetFoodById(element).imagePath, petFoodDB.getPetFoodById(element).name,
                        '\$${petFoodDB.getPetFoodById(element).price}/lbs', context)),
              )).toList(),
            ),
          )
        ]),
      ),
    );
  }

  Widget _buildItem(
      String id, String img, String name, String price, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detailed_pet_food');
      },
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Image.asset(img),
          ),
          Expanded(
            flex: 1,
            child: Text(name),
          ),
          Expanded(
            flex: 1,
            child: Text(price),
          ),
        ],
      ),
    );
  }
}
