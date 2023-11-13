import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class QuantityField extends StatelessWidget {
  const QuantityField(
      {super.key, required this.name, required this.index, this.quantity});

  final String? quantity;
  final int index;
  final String name;

  @override
  Widget build(BuildContext context) {
    int keyOffset = DateTime.now().millisecondsSinceEpoch;
    String fieldName = 'Quantity';
    return FormBuilderTextField(
      name: name + fieldName,
      key: GlobalObjectKey(keyOffset + index),
      initialValue: quantity,
      decoration: InputDecoration(
        labelText: fieldName,
        hintText: 'Example: "1 Cup"',
      ),
    );
  }
}
