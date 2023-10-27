import 'package:app/components/form-fields/food_type_field.dart';
import 'package:app/components/form-fields/quantity_field.dart';
import 'package:app/components/form-fields/time_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data_model/feeding_schedule_db.dart';

class EditFeedingSchedule extends ConsumerStatefulWidget {
  const EditFeedingSchedule({Key? key}) : super(key: key);

  static const routeName = '/edit_feeding_schedule';

  @override
  ConsumerState<EditFeedingSchedule> createState() =>
      _EditFeedingScheduleState();
}

class _EditFeedingScheduleState extends ConsumerState<EditFeedingSchedule> {
  final List<ValueKey> formValueKeys = [];
  final List<FormBuilderState> formStates = [];

  @override
  Widget build(BuildContext context) {
    final feedingScheduleDB = ref.watch(feedingScheduleDBProvider);
    final List<FeedingScheduleData> feedingSchedules =
        feedingScheduleDB.getAllFeedingSchedules();
    for (var schedule in feedingSchedules) {
      formValueKeys.add(ValueKey(schedule.id));
    }

    void onSubmit() {}

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Feeding Schedule",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.save, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.clear, color: Colors.white),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: ListView(
            children: feedingSchedules.map((schedule) {
              int index = feedingSchedules.indexOf(schedule);
              return ExpansionPanelList(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    schedule.isExpanded = !isExpanded;
                  });
                },
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(
                          schedule.day,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      );
                    },
                    body: FormBuilder(
                      key: formValueKeys[index],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: schedule.schedules.map<Widget>((meal) {
                            final timeFieldKey =
                                ValueKey('${schedule.id}_${meal.name}_time');
                            final foodTypeFieldKey = ValueKey(
                                '${schedule.id}_${meal.name}_foodType');
                            final quantityTypeFieldKey = ValueKey(
                                '${schedule.id}_${meal.name}_quantity');
                            return Card(
                              elevation: 5,
                              margin: const EdgeInsets.only(bottom: 15.0),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    Text(meal.name),
                                    const SizedBox(height: 8.0),
                                    TimeField(
                                      fieldKey: timeFieldKey,
                                      time: meal.time,
                                    ),
                                    const SizedBox(height: 8.0),
                                    FoodTypeField(
                                      fieldKey: foodTypeFieldKey,
                                    ),
                                    const SizedBox(height: 8.0),
                                    QuantityField(
                                      fieldKey: quantityTypeFieldKey,
                                      quantity: meal.quantity,
                                    ),
                                    const Divider(
                                      color: Colors.grey,
                                      thickness: 1.0,
                                      height: 16.0,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    isExpanded: schedule.isExpanded,
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
