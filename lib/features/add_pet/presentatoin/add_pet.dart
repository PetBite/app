import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPetPage extends ConsumerWidget {
  const AddPetPage({Key? key}) : super(key: key);

  static const routeName = '/add_pet';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Pet',
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: ListView(padding: const EdgeInsets.all(12.0), children: [
          Column(children: [
            Row(children: [
              Card(
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/add_pet_form');
                  },
                  child: const SizedBox(
                    width: 150,
                    height: 150,
                    child: Icon(
                      Icons.add_circle_rounded,
                      size: 50,
                    ),
                  ),
                ),
              ),
            ]),
          ]),
        ]),
      ),
    );
  }
}
