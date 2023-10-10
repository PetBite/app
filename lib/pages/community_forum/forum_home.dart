import 'package:app/data_model/community_db.dart';
import 'package:app/pages/community_forum/create_post.dart';
import 'package:flutter/material.dart';
import 'package:app/components/forum_post.dart';

class ForumHomePage extends StatefulWidget {
  const ForumHomePage({Key? key}) : super(key: key);

  static const routeName = '/forum_home';

  @override
  State<ForumHomePage> createState() => _ForumHomePageState();
}

class _ForumHomePageState extends State<ForumHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> communityIDs = communityDB.getCommunityIDs();
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          const Text('Forum Home'),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: communityIDs
                .map((element) => Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.lightBlue,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: Image.asset(
                          communityDB.getCommunityById(element).imagePath),
                      color: Colors.white,
                      onPressed: () {},
                    )))
                .toList(),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Recent Posts'),
              TextButton(
                onPressed: () {},
                child: const Text('View All'),
              ),
            ],
          ),
          const ForumPostCard(),
          const ForumPostCard(),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CreatePost()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
