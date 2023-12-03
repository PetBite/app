import 'package:app/features/activity_log/domain/pet_activity.dart';
import 'package:app/features/activity_log/domain/pet_activity_collection.dart';
import 'package:app/features/activity_log/presentation/pet_activity_controller.dart';
import 'package:app/features/all_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

import '../../../common/pet_id_provider.dart';

class AddActivity extends ConsumerWidget {
  AddActivity({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormBuilderState>();
  final _titleFieldKey = GlobalKey<FormBuilderFieldState>();
  final _typeFieldKey = GlobalKey<FormBuilderFieldState>();
  final _contentFieldKey = GlobalKey<FormBuilderFieldState>();
  final _timestampFieldKey = GlobalKey<FormBuilderFieldState>();

  static const routeName = '/addActivity';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AllData> asyncAllData = ref.watch(allDataProvider);
    return asyncAllData.when(
      data: (allData) {
        return _build(
            context: context,
            ref: ref,
            petActivities: allData.petActivities,
            currentUserID: allData.currentUserID,
            currentPetID: allData.currentPetID);
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }

  Widget _build(
      {required BuildContext context,
      required WidgetRef ref,
      required List<PetActivity> petActivities,
      required String currentUserID,
      required String currentPetID}) {
    PetActivityCollection activityDB = PetActivityCollection(petActivities);

    List<String> activityIDs = activityDB.getActivityIDs();
    activityIDs.sort();
    List<String> backwardsIds = activityIDs.reversed.toList();

    String incrementString(String inputString) {
      final RegExp regExp = RegExp(r'(\d+)$');
      final Match? match = regExp.firstMatch(inputString);

      if (match != null) {
        String numberPart = match.group(1)!;
        int number = int.parse(numberPart);
        number += 1;

        String formattedNumber =
            number.toString().padLeft(numberPart.length, '0');
        String newString =
            inputString.substring(0, inputString.length - numberPart.length) +
                formattedNumber;
        return newString;
      } else {
        return inputString;
      }
    }

    void onSubmit() {
      bool isValid = _formKey.currentState?.saveAndValidate() ?? false;
      if (!isValid) return;
      String title = _titleFieldKey.currentState?.value;
      String type = _typeFieldKey.currentState?.value;
      String content = _contentFieldKey.currentState?.value;
      String timestamp = _timestampFieldKey.currentState?.value;

      PetActivity newActivity = PetActivity(
        id: incrementString(backwardsIds[0]),
        petId: ref.watch(petIdProvider),
        title: title,
        type: type,
        content: content,
        timestamp: timestamp,
        date: DateFormat('yMd').format(DateTime.now()),
      );

      ref.read(petActivityControllerProvider.notifier).updatePetActivity(
          activity: newActivity,
          petId: currentPetID,
          userId: currentUserID,
          onSuccess: () {
            Navigator.pop(context);
          });

      Navigator.pop(context);
    }

    void onReset() {
      _formKey.currentState?.reset();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detailed Activity Log"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            FormBuilder(
              key: _formKey,
              child: Column(
                children: [
                  FormBuilderTextField(
                    name: 'Activity',
                    key: _titleFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'Activity',
                      hintText: 'Enter activity title',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: 'Type',
                    key: _typeFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'Type',
                      hintText: 'Enter activity type',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: 'Content',
                    key: _contentFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'Content',
                      hintText: 'Enter activity description',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: 'Timestamp',
                    key: _timestampFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'Timestamp',
                      hintText: 'Enter time of activity',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                onPressed: onSubmit,
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: onReset,
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
