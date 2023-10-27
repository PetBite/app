import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FoodTypeField extends StatelessWidget {
  const FoodTypeField({super.key, required this.fieldKey, this.foodType});

  final String? foodType;
  final GlobalKey<FormBuilderFieldState<FormBuilderField<dynamic>, dynamic>>
      fieldKey;

  @override
  Widget build(BuildContext context) {
    String fieldName = 'Food Type';
    return FormBuilderTextField(
      name: fieldName,
      key: fieldKey,
      initialValue: foodType,
      decoration: InputDecoration(
        labelText: fieldName,
        hintText: 'Example: "Pedigree Adul"',
      ),
    );
  }
}
