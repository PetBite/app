import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class TimeField extends StatelessWidget {
  const TimeField({super.key, required this.fieldKey, this.time});

  final String? time;
  final GlobalKey<FormBuilderFieldState<FormBuilderField<dynamic>, dynamic>>
      fieldKey;

  @override
  Widget build(BuildContext context) {
    String fieldName = 'Time';
    return FormBuilderTextField(
      name: fieldName,
      key: fieldKey,
      initialValue: time,
      decoration: InputDecoration(
        labelText: fieldName,
        hintText: 'Example: "11:00 A.M"',
      ),
    );
  }
}
