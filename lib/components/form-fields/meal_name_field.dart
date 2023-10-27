import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class MealNameField extends StatelessWidget {
  const MealNameField({super.key, required this.fieldKey, this.mealName});

  final String? mealName;
  final GlobalKey<FormBuilderFieldState<FormBuilderField<dynamic>, dynamic>>
      fieldKey;

  @override
  Widget build(BuildContext context) {
    String fieldName = 'Meal Name';
    return FormBuilderTextField(
      name: fieldName,
      key: fieldKey,
      initialValue: mealName,
      decoration: InputDecoration(
        labelText: fieldName,
        hintText: 'Example: "Breakfast"',
      ),
    );
  }
}
