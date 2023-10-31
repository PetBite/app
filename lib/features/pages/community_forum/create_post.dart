import 'package:app/data_model/community_db.dart';
import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  CommunityData? selectedCommunity;

  @override
  Widget build(BuildContext context) {
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
                  DropdownButtonFormField<CommunityData>(
                    value: selectedCommunity,
                    onChanged: (CommunityData? community) {
                      setState(() {
                        selectedCommunity = community;
                      });
                    },
                    items: communityDB
                        .getCommunityIDs()
                        .map((element) => DropdownMenuItem<CommunityData>(
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
