import 'package:app/features/all_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/pet_details.dart';
import '../domain/pet_details_collection.dart';

class PetDetails extends ConsumerWidget {
  const PetDetails({Key? key}) : super(key: key);

  static const routeName = '/pet_details';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AllData> asyncAllData = ref.watch(allDataProvider);
    return asyncAllData.when(
      data: (allData) =>
          _build(context: context, petDetails: allData.petDetails),
      error: (Object error, StackTrace stackTrace) =>
          Text('error: $error Stack trace: $stackTrace'),
      loading: () => const CircularProgressIndicator(),
    );
  }

  Widget _build(
      {required BuildContext context,
      required List<PetDetailsData> petDetails}) {
    PetDetailsCollection detailsCollection = PetDetailsCollection(petDetails);
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.all(9.0),
            child: ListView(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.only(
                      bottom: 5.0,
                    ),
                    alignment: Alignment.center,
                    height: 50,
                    child: const Text(
                      'Pet Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    )),
                TextFormField(
                  initialValue: 'a',
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Breed',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Birthday',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Age',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Weight',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Chip #',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Registration #',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Country of Residence',
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: ColorScheme.light,
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: (Colors.blueAccent),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 20),
                                  textStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              child: const Text('Submit')),
                        ]))
              ],
            )),
      ),
    );
  }
}
