import 'package:app/features/all_data_provider.dart';
import 'package:app/features/community_forum/domain/community.dart';
import 'package:app/features/community_forum/domain/community_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreatePost extends ConsumerStatefulWidget {
  const CreatePost({super.key});

  @override
  ConsumerState<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends ConsumerState<CreatePost> {
  Community? selectedCommunity;

  @override
  Widget build(BuildContext context) {
    final AsyncValue<AllData> asyncAllData = ref.watch(allDataProvider);
    return asyncAllData.when(
      data: (allData) {
        return _build(context: context, communities: allData.communities);
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }

  Widget _build(
      {required BuildContext context, required List<Community> communities}) {
    CommunityCollection communityDB = CommunityCollection(communities);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Post"),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a title',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text("Body:"),
                  const SizedBox(height: 10),
                  const TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a body',
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
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
              )),
        ],
      )),
    );
  }
}
