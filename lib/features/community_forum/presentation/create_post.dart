import 'package:app/features/all_data_provider.dart';
import 'package:app/features/community_forum/domain/community.dart';
import 'package:app/features/community_forum/domain/community_collection.dart';
import 'package:app/features/community_forum/domain/community_post.dart';
import 'package:app/features/community_forum/presentation/post_controller.dart';
import 'package:app/features/user/domain/user.dart';
import 'package:app/features/user/domain/user_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CreatePost extends ConsumerStatefulWidget {
  const CreatePost({super.key});

  @override
  ConsumerState<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends ConsumerState<CreatePost> {
  Community? selectedCommunity;
  final _formKey = GlobalKey<FormBuilderState>();
  final _titleFieldKey = GlobalKey<FormBuilderFieldState>();
  final _contentFieldKey = GlobalKey<FormBuilderFieldState>();

  @override
  Widget build(BuildContext context) {
    final AsyncValue<AllData> asyncAllData = ref.watch(allDataProvider);
    return asyncAllData.when(
      data: (allData) {
        return _build(
            context: context,
            communities: allData.communities,
            currentUserID: allData.currentUserID,
            users: allData.users);
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }

  Widget _build(
      {required BuildContext context,
      required List<Community> communities,
      required String currentUserID,
      required List<User> users}) {
    CommunityCollection communityDB = CommunityCollection(communities);
    UserCollection userDB = UserCollection(users);

    void onSubmit() {
      bool isValid = _formKey.currentState?.saveAndValidate() ?? false;
      if (!isValid) return;
      String id = UniqueKey().toString();
      String title = _titleFieldKey.currentState?.value;
      String content = _contentFieldKey.currentState?.value;
      String authorID = currentUserID;
      String authorName = userDB.getUser(currentUserID).name;
      String timestamp = DateTime.now().toString();
      String communityID =
          communityDB.getCommunityIdByName(selectedCommunity!.name);
      CommunityPost newPost = CommunityPost(
          id: id,
          authorID: authorID,
          authorName: authorName,
          communityID: communityID,
          title: title,
          content: content,
          timestamp: timestamp);
      ref.read(postControllerProvider.notifier).updatePost(
          post: newPost,
          onSuccess: () {
            Navigator.pop(context);
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Post"),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: FormBuilder(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Text('Select a community'),
                    DropdownButtonFormField<Community>(
                      value: selectedCommunity,
                      onChanged: (Community? community) {
                        setState(() {
                          selectedCommunity = community;
                        });
                      },
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                      ]),
                      items: communityDB
                          .getCommunityIDs()
                          .map((element) => DropdownMenuItem<Community>(
                                value: communityDB.getCommunityById(element),
                                child: Text(
                                    communityDB.getCommunityById(element).name),
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: 20),
                    const Text("Title:"),
                    const SizedBox(height: 10),
                    FormBuilderTextField(
                      name: 'Title',
                      key: _titleFieldKey,
                      decoration: const InputDecoration(
                        labelText: 'Title',
                        hintText: 'Enter the post title',
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                      ]),
                    ),
                    const SizedBox(height: 20),
                    const Text("Content:"),
                    const SizedBox(height: 10),
                    FormBuilderTextField(
                      name: 'Content',
                      key: _contentFieldKey,
                      decoration: const InputDecoration(
                        labelText: 'Content',
                        hintText: 'Enter the post content',
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                      ]),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        onSubmit();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 140, vertical: 16),
                      ),
                      child: const Text(
                        'Post',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      )),
    );
  }
}
