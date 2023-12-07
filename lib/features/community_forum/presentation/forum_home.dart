import 'package:app/features/all_data_provider.dart';
import 'package:app/features/common/community_id_provider.dart';
import 'package:app/features/community_forum/data/community_post_provider.dart';
import 'package:app/features/community_forum/domain/community.dart';
import 'package:app/features/community_forum/domain/community_collection.dart';
import 'package:app/features/community_forum/domain/community_post.dart';
import 'package:app/features/community_forum/presentation/create_post.dart';
import 'package:app/features/community_forum/presentation/forum_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ForumHomePage extends ConsumerStatefulWidget {
  const ForumHomePage({Key? key}) : super(key: key);

  static const routeName = '/forum_home';

  @override
  ConsumerState<ForumHomePage> createState() => _ForumHomePageState();
}

class _ForumHomePageState extends ConsumerState<ForumHomePage> {
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
    List<String> communityIDs = communityDB.getCommunityIDs();
    AsyncValue<List<CommunityPost>> postsAsyncValue =
        ref.watch(communityPostsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Forum Home'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {
              Navigator.pushNamed(context, '/direct_messages');
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
          child: postsAsyncValue.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) => Text('Error: $error'),
              data: (posts) {
                return ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: communityIDs
                          .map((element) => Ink(
                              decoration: const ShapeDecoration(
                                color: Colors.lightBlue,
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                icon: CircleAvatar(
                                    backgroundImage: AssetImage(communityDB
                                        .getCommunityById(element)
                                        .imagePath)),
                                // icon: Image.asset(communityDB
                                //   .getCommunityById(element)
                                // .imagePath),
                                color: Colors.white,
                                onPressed: () {
                                  ref.read(communityIdProvider.notifier).state =
                                      element;
                                },
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
                    if (posts.isNotEmpty)
                      for (var post in posts) ForumPostCard(postData: post)
                    else
                      const Text('No posts yet')
                  ],
                );
              })),
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
