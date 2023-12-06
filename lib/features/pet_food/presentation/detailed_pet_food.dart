import 'package:app/features/all_data_provider.dart';
import 'package:app/features/pet_food/domain/pet_food.dart';
import 'package:app/features/pet_food/domain/pet_food_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PetFoodPage extends ConsumerStatefulWidget {
  const PetFoodPage({Key? key}) : super(key: key);

  static const routeName = '/detailed_pet_food';

  @override
  ConsumerState<PetFoodPage> createState() => _PetFoodPageState();
}

class _PetFoodPageState extends ConsumerState<PetFoodPage> {
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
    final AsyncValue<AllData> asyncAllData = ref.watch(allDataProvider);
    return asyncAllData.when(
      data: (allData) {
        return _build(
          context: context,
          petFoods: allData.petFoods,
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }

  Widget _build({
    required BuildContext context,
    required List<PetFoodData> petFoods,
  }) {
    final id = ModalRoute.of(context)?.settings.arguments as String?;
    PetFoodCollection petFoodDB = PetFoodCollection(petFoods);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Food List'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          children: [
            const SizedBox(height: 20),
            Image.asset(petFoodDB.getPetFoodById(id!).imagePath,
                width: 300, height: 300),
            const SizedBox(height: 20),
            Text(
              petFoodDB.getPetFoodById(id).name,
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
                    proConList(petFoodDB.getPetFoodById(id).pros,
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
                    proConList(petFoodDB.getPetFoodById(id).cons,
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
