import 'package:app/features/all_data_provider.dart';
import 'package:app/features/common/pet_id_provider.dart';
import 'package:app/features/home/presentation/home.dart';
import 'package:app/features/pet_details/domain/pet_details.dart';
import 'package:app/features/pet_details/domain/pet_details_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PetListPage extends ConsumerWidget {
  const PetListPage({Key? key}) : super(key: key);

  static const routeName = '/pet_list';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AllData> asyncAllData = ref.watch(allDataProvider);
    return asyncAllData.when(
      data: (allData) {
        return _build(
            context: context, petDetails: allData.petDetails, ref: ref);
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }

  Widget _build({
    required BuildContext context,
    required List<PetDetailsData> petDetails,
    required WidgetRef ref,
  }) {
    PetDetailsCollection petDB = PetDetailsCollection(petDetails);
    final List<PetDetailsData> petList = petDB.getAllPetDetails();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pet List',
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            for (var pet in petList)
              Card(
                clipBehavior: Clip.hardEdge,
                elevation: 4.0, // Adds a shadow effect
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, Home.routeName);
                    print(pet.id);
                    ref.read(petIdProvider.notifier).state = pet.id;
                  },
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(10)),
                            child: Image.asset(
                              pet.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                pet.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                pet.gender,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            Card(
              clipBehavior: Clip.hardEdge,
              elevation: 4.0, // Adds a shadow effect
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/add_pet_form');
                },
                child: Container(
                  width: 150,
                  height: 150,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle_rounded,
                        size: 50,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Add a New Pet",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
