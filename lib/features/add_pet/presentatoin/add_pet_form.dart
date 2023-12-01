import 'package:app/features/all_data_provider.dart';
import 'package:app/features/pet_details/presentation/pet_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../../pet_details/domain/pet_details.dart';

class AddPetForm extends ConsumerWidget {
  AddPetForm({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormBuilderState>();
  final _nameFieldKey = GlobalKey<FormBuilderFieldState>();
  final _breedFieldKey = GlobalKey<FormBuilderFieldState>();
  final _birthdayFieldKey = GlobalKey<FormBuilderFieldState>();
  final _ageFieldKey = GlobalKey<FormBuilderFieldState>();
  final _weightFieldKey = GlobalKey<FormBuilderFieldState>();
  final _chipFieldKey = GlobalKey<FormBuilderFieldState>();
  final _registrationFieldKey = GlobalKey<FormBuilderFieldState>();
  final _residenceFieldKey = GlobalKey<FormBuilderFieldState>();
  final _genderFieldKey = GlobalKey<FormBuilderFieldState>();
  final _heightFieldKey = GlobalKey<FormBuilderFieldState>();
  final _colorFieldKey = GlobalKey<FormBuilderFieldState>();

  static const routeName = '/add_pet_form';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AllData> asyncAllData = ref.watch(allDataProvider);
    return asyncAllData.when(
      data: (allData) => _build(
          context: context,
          petDetails: allData.petDetails,
          currentUserID: allData.currentUserID,
          ref: ref),
      error: (Object error, StackTrace stackTrace) =>
          Text('error: $error Stack trace: $stackTrace'),
      loading: () => const CircularProgressIndicator(),
    );
  }

  Widget _build({
    required BuildContext context,
    required List<PetDetailsData> petDetails,
    required String currentUserID,
    required WidgetRef ref,
  }) {
    void onSubmit() {
      bool isValid = _formKey.currentState?.saveAndValidate() ?? false;
      if (!isValid) return;
      String name = _nameFieldKey.currentState?.value;
      String breed = _breedFieldKey.currentState?.value;
      String birthday = _birthdayFieldKey.currentState?.value;
      String age = _ageFieldKey.currentState?.value;
      String weight = _weightFieldKey.currentState?.value;
      String chip = _chipFieldKey.currentState?.value;
      String registration = _registrationFieldKey.currentState?.value;
      String residence = _residenceFieldKey.currentState?.value;
      String gender = _genderFieldKey.currentState?.value;
      String height = _heightFieldKey.currentState?.value;
      String color = _colorFieldKey.currentState?.value;
      int numPets = petDetails.length;
      String id = 'pet-${(numPets + 1).toString().padLeft(3, '0')}';
      PetDetailsData details = PetDetailsData(
        id: id,
        name: name,
        breed: breed,
        birthday: birthday,
        age: age,
        weight: weight,
        chip: chip,
        registration: registration,
        residence: residence,
        gender: gender,
        height: height,
        color: color,
        isExpanded: false,
      );
      ref.read(petDetailsControllerProvider.notifier).updatePetDetails(
            details: details,
            userId: currentUserID,
            onSuccess: () {},
          );
    }

    void onReset() {
      _formKey.currentState?.reset();
    }

    Widget editPetDetailsForm() => Container(
        padding: const EdgeInsets.all(9.0),
        child: ListView(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.only(
                  bottom: 5.0,
                ),
                alignment: Alignment.center,
                height: 50,
                child: const Text(
                  'Pet Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                )),
            FormBuilder(
              key: _formKey,
              child: Column(
                children: [
                  FormBuilderTextField(
                    name: 'Name',
                    key: _nameFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter pet name',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: 'Breed',
                    key: _breedFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'Breed',
                      hintText: 'Enter pet breed',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: 'Birthday',
                    key: _birthdayFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'Birthday',
                      hintText: 'Enter pets birthday',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: 'Age',
                    key: _ageFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'Age',
                      hintText: 'Enter pet age',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: 'Weight',
                    key: _weightFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'Weight',
                      hintText: 'Enter pet weight',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: 'Chip',
                    key: _chipFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'Chip',
                      hintText: 'Enter pet chip number',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: 'Registration',
                    key: _registrationFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'Registration',
                      hintText: 'Enter pet registration number',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: 'Residence',
                    key: _residenceFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'Residence',
                      hintText: 'Enter pet residence info',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: 'Gender',
                    key: _genderFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'Gender',
                      hintText: 'Enter pet gender',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: 'Height',
                    key: _heightFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'Height',
                      hintText: 'Enter pet height info',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  FormBuilderTextField(
                    name: 'Color',
                    key: _colorFieldKey,
                    decoration: const InputDecoration(
                      labelText: 'Color',
                      hintText: 'Enter pet color',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: onSubmit,
                          style: ElevatedButton.styleFrom(
                              backgroundColor: (Colors.blueAccent),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20),
                              textStyle: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          child: const Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          )),
                      ElevatedButton(
                        onPressed: onReset,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: (Colors.blueAccent),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                            textStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        child: const Text(
                          'Reset',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]))
          ],
        ));

    AsyncValue asyncUpdate = ref.watch(petDetailsControllerProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pet Details',
            textAlign: TextAlign.center,
          ),
        ),
        body: asyncUpdate.when(
            data: (_) => editPetDetailsForm(),
            error: (Object error, StackTrace stackTrace) =>
                Text('error: $error Stack trace: $stackTrace'),
            loading: () => const CircularProgressIndicator()));
  }
}
