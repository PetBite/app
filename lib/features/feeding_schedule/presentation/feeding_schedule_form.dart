import 'package:app/features/feeding_schedule/domain/feeding_schedule_db.dart';
import 'package:flutter/material.dart';
import 'package:app/components/form-fields/food_type_field.dart';
import 'package:app/components/form-fields/quantity_field.dart';
import 'package:app/components/form-fields/time_field.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FeedingScheduleForm extends StatefulWidget {
  const FeedingScheduleForm({Key? key, required this.schedules})
      : super(key: key);
  final String fieldName = 'Feeding Schedules';
  final List<FeedingScheduleData> schedules;

  @override
  _FeedingScheduleFormState createState() => _FeedingScheduleFormState();
}

class _FeedingScheduleFormState extends State<FeedingScheduleForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  void onPressed() {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      print(_formKey.currentState!.value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
        key: _formKey,
        child: ListView(
          children: [
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  widget.schedules[index].isExpanded = isExpanded;
                });
              },
              children: widget.schedules.asMap().entries.map((entry) {
                int index = entry.key;
                var schedule = entry.value;
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text(schedule.day),
                    );
                  },
                  body: Column(
                    children: schedule.schedules.map((s) {
                      return Card(
                          child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(children: [
                          TimeField(
                            name: schedule.day + s.name,
                            index: index,
                            time: s.time,
                          ),
                          FoodTypeField(
                            name: schedule.day + s.name,
                            index: index,
                            foodType: s.foodType,
                          ),
                          QuantityField(
                            name: schedule.day + s.name,
                            index: index,
                            quantity: s.quantity,
                          ),
                          ElevatedButton(
                              onPressed: onPressed, child: const Text('Save'))
                        ]),
                      ));
                    }).toList(),
                  ),
                  isExpanded: widget.schedules[index].isExpanded,
                  canTapOnHeader: true,
                );
              }).toList(),
            ),
          ],
        ));
  }
}
