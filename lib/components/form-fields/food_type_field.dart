import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FoodTypeField extends StatelessWidget {
  const FoodTypeField(
      {super.key, required this.name, required this.index, this.foodType});

  final String? foodType;
  final int index;
  final String name;

  @override
  Widget build(BuildContext context) {
    int keyOffset = DateTime.now().millisecondsSinceEpoch;
    String fieldName = 'Food Type';
    return FormBuilderTextField(
      name: name + fieldName,
      key: GlobalObjectKey(keyOffset + index),
      initialValue: foodType,
      decoration: InputDecoration(
        labelText: fieldName,
        hintText: 'Example: "Pedigree Adul"',
      ),
    );
  }
}
