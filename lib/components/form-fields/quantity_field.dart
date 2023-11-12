import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class QuantityField extends StatelessWidget {
  const QuantityField({super.key, required this.fieldKey, this.quantity});

  final String? quantity;
  final ValueKey<String> fieldKey;

  @override
  Widget build(BuildContext context) {
    String fieldName = 'Quantity';
    return FormBuilderTextField(
      name: fieldKey.toString(),
      key: fieldKey,
      initialValue: quantity,
      decoration: InputDecoration(
        labelText: fieldName,
        hintText: 'Example: "1 Cup"',
      ),
    );
  }
}
