import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class TimeField extends StatelessWidget {
  const TimeField(
      {super.key, required this.name, required this.index, this.time});

  final String? time;
  final int index;
  final String name;

  @override
  Widget build(BuildContext context) {
    int keyOffset = DateTime.now().millisecondsSinceEpoch;
    String fieldName = 'Time';
    return FormBuilderTextField(
      name: name + fieldName,
      key: GlobalObjectKey(keyOffset + index),
      initialValue: time,
      decoration: InputDecoration(
        labelText: fieldName,
        hintText: 'Example: "11:00 A.M"',
      ),
    );
  }
}
