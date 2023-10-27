import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class QuantityField extends StatelessWidget {
  const QuantityField({super.key, required this.fieldKey, this.quantity});

  final String? quantity;
  final GlobalKey<FormBuilderFieldState<FormBuilderField<dynamic>, dynamic>>
      fieldKey;

  @override
  Widget build(BuildContext context) {
    String fieldName = 'Quantity';
    return FormBuilderTextField(
      name: fieldName,
      key: fieldKey,
      initialValue: quantity,
      decoration: InputDecoration(
        labelText: fieldName,
        hintText: 'Example: "1 Cup"',
      ),
    );
  }
}