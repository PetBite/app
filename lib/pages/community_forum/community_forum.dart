import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class CommunityForum extends StatelessWidget {
  const CommunityForum({super.key});

  static const routeName = '/community_forum';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Community Forum Page'),
      ),
    );
  }
}
