import 'package:app/features/all_data_provider.dart';
import 'package:app/features/user/domain/user.dart';
import 'package:app/features/user/domain/user_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/features/user/presentation/users_controller.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AccountInfo extends ConsumerWidget {
  AccountInfo({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormBuilderState>();
  final _nameFieldKey = GlobalKey<FormBuilderFieldState>();
  final _emailFieldKey = GlobalKey<FormBuilderFieldState>();
  final _phoneFieldKey = GlobalKey<FormBuilderFieldState>();
  final _usernameFieldKey = GlobalKey<FormBuilderFieldState>();
  static const routeName = '/account_info';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AllData> asyncAllData = ref.watch(allDataProvider);
    return asyncAllData.when(
      data: (allData) => _build(
          context: context,
          currentUserID: allData.currentUserID,
          users: allData.users,
          ref: ref),
      error: (Object error, StackTrace stackTrace) =>
          Text('error: $error Stack trace: $stackTrace'),
      loading: () => const CircularProgressIndicator(),
    );
  }

  Widget _build(
      {required BuildContext context,
      required String currentUserID,
      required WidgetRef ref,
      required List<User> users}) {
    UserCollection userCollection = UserCollection(users);

    void onSubmit() {
      bool isValid = _formKey.currentState?.saveAndValidate() ?? false;
      if (!isValid) return;
      String name = _nameFieldKey.currentState?.value ?? '';
      String email = _emailFieldKey.currentState?.value ?? '';
      String phone = _phoneFieldKey.currentState?.value ?? '';
      String username = _usernameFieldKey.currentState?.value ?? '';
      User user = User(
        id: currentUserID,
        name: name,
        email: email,
        phone: phone,
        username: username,
      );
      ref.read(usersControllerProvider.notifier).updateUser(
            user: user,
            onSuccess: () {
              Navigator.pop(context);
            },
          );
    }

    void onReset() {
      _formKey.currentState?.reset();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Info'),
      ),
      body: Scaffold(
        body: SafeArea(
          child: ListView(children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Column(
                children: [
                  FormBuilder(
                    key: _formKey,
                    child: Column(
                      children: [
                        FormBuilderTextField(
                          key: _nameFieldKey,
                          name: 'name',
                          initialValue:
                              userCollection.getUser(currentUserID).name,
                          decoration: const InputDecoration(
                            labelText: 'Name',
                          ),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                          ]),
                        ),
                        FormBuilderTextField(
                          key: _emailFieldKey,
                          name: 'email',
                          initialValue:
                              userCollection.getUser(currentUserID).email,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                          ),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                          ]),
                        ),
                        FormBuilderTextField(
                          key: _phoneFieldKey,
                          name: 'phone',
                          initialValue:
                              userCollection.getUser(currentUserID).phone,
                          decoration: const InputDecoration(
                            labelText: 'Phone',
                          ),
                        ),
                        FormBuilderTextField(
                          key: _usernameFieldKey,
                          name: 'username',
                          initialValue:
                              userCollection.getUser(currentUserID).username,
                          decoration: const InputDecoration(
                            labelText: 'Username',
                          ),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: onSubmit,
                        child: const Text('Submit'),
                      ),
                      ElevatedButton(
                        onPressed: onReset,
                        child: const Text('Reset'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
