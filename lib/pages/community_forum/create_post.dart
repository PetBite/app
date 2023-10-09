import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
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
                  const DropdownMenu(
                    dropdownMenuEntries: [],
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
                    child: const Text('Post'),
                  ),
                ],
              )),
        ],
      )),
    );
  }
}
