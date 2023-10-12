import 'package:flutter/material.dart';

class PetDetails extends StatefulWidget {
  const PetDetails({Key? key}) : super(key: key);

  static const routeName = '/pet_details';

  @override
  State<PetDetails> createState() => _PetDetailsState();
}

class _PetDetailsState extends State<PetDetails> {
  final _nameController = TextEditingController();
  final _breedController = TextEditingController();
  final _birthdayController = TextEditingController();
  final _ageController = TextEditingController();
  final _weightController = TextEditingController();
  final _chipController = TextEditingController();
  final _registrationController = TextEditingController();
  final _residenceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
                TextField(
                  controller: _breedController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Breed',
                  ),
                ),
                TextField(
                  controller: _birthdayController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Birthday',
                  ),
                ),
                TextField(
                  controller: _ageController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Age',
                  ),
                ),
                TextField(
                  controller: _weightController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Weight',
                  ),
                ),
                TextField(
                  controller: _chipController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Chip #',
                  ),
                ),
                TextField(
                  controller: _registrationController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Registration #',
                  ),
                ),
                TextField(
                  controller: _residenceController,
                  decoration: const InputDecoration(
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
