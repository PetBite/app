import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:app/features/feeding_schedule/domain/feeding_schedule_db.dart';
import 'package:app/components/form-fields/food_type_field.dart';
import 'package:app/components/form-fields/quantity_field.dart';
import 'package:app/components/form-fields/time_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeedingScheduleForm extends ConsumerStatefulWidget {
  const FeedingScheduleForm({Key? key}) : super(key: key);
  final String fieldName = 'Feeding Schedules';

  @override
  ConsumerState<FeedingScheduleForm> createState() =>
      _FeedingScheduleFormState();
}

class _FeedingScheduleFormState extends ConsumerState<FeedingScheduleForm> {
  @override
  Widget build(BuildContext context) {
    final feedingScheduleDB = ref.watch(feedingScheduleDBProvider);
    final List<FeedingScheduleData> feedingSchedules =
        feedingScheduleDB.getAllFeedingSchedules();

    void onPressed(GlobalKey<FormBuilderState> formKey, String day, String id) {
      var isValid = formKey.currentState?.saveAndValidate() ?? false;
      if (!isValid) return;
      String breakfastTimeKey = '${day}BreakfastTime';
      String breakfastFoodTypeKey = '${day}BreakfastFoodType';
      String breakfastQuantityKey = '${day}BreakfastQuantity';

      String lunchTimeKey = '${day}LunchTime';
      String lunchFoodTypeKey = '${day}LunchFoodType';
      String lunchQuantityKey = '${day}LunchQuantity';

      String dinnerTimeKey = '${day}DinnerTime';
      String dinnerFoodTypeKey = '${day}DinnerFoodType';
      String dinnerQuantityKey = '${day}DinnerQuantity';

      String? breakfastTime = formKey.currentState!.value[breakfastTimeKey];
      String? breakfastFoodType =
          formKey.currentState!.value[breakfastFoodTypeKey];
      String? breakfastQuantity =
          formKey.currentState!.value[breakfastQuantityKey];

      String? lunchTime = formKey.currentState!.value[lunchTimeKey];
      String? lunchFoodType = formKey.currentState!.value[lunchFoodTypeKey];
      String? lunchQuantity = formKey.currentState!.value[lunchQuantityKey];

      String? dinnerTime = formKey.currentState!.value[dinnerTimeKey];
      String? dinnerFoodType = formKey.currentState!.value[dinnerFoodTypeKey];
      String? dinnerQuantity = formKey.currentState!.value[dinnerQuantityKey];

      List<DailyFeedingScheduleData> schedules = [
        DailyFeedingScheduleData(
            name: 'Breakfast',
            time: breakfastTime,
            foodType: breakfastFoodType,
            quantity: breakfastQuantity),
        DailyFeedingScheduleData(
            name: 'Lunch',
            time: lunchTime,
            foodType: lunchFoodType,
            quantity: lunchQuantity),
        DailyFeedingScheduleData(
            name: 'Dinner',
            time: dinnerTime,
            foodType: dinnerFoodType,
            quantity: dinnerQuantity),
      ];

      feedingScheduleDB.updateDailySchedule(
          id: id, day: day, schedules: schedules);
    }

    return ListView(
      children: [
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              feedingSchedules[index].isExpanded = isExpanded;
            });
          },
          children: feedingSchedules.asMap().entries.map((entry) {
            int index = entry.key;
            var schedule = entry.value;
            GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(title: Text(schedule.day));
              },
              body: FormBuilder(
                key: formKey,
                child: Column(children: [
                  ...schedule.schedules.map((s) {
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
                        ]),
                      ),
                    );
                  }),
                  ElevatedButton(
                      onPressed: () =>
                          onPressed(formKey, schedule.day, schedule.id),
                      child: const Text('Save'))
                ]),
              ),
              isExpanded: feedingSchedules[index].isExpanded,
              canTapOnHeader: true,
            );
          }).toList(),
        )
      ],
    );
  }
}
