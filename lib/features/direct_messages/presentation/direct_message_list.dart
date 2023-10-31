import 'package:app/features/direct_messages/presentation/direct_message.dart';
import 'package:flutter/material.dart';

import '../domain/direct_message_db.dart';

/// Displays detailed information about a SampleItem.

class DirectMessageList extends StatefulWidget {
  const DirectMessageList({Key? key}) : super(key: key);

  static const routeName = '/direct_messages';

  @override
  State<DirectMessageList> createState() => _DirectMessageListState();
}

class _DirectMessageListState extends State<DirectMessageList> {
  List<String> directMessageIDs = DirectMessageDB.getCoverMessageIDs();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Direct Messages'),
      ),
      body: Column(
        children: directMessageIDs
            .map(
              (element) => ListTile(
                leading: CircleAvatar(
                  foregroundImage: AssetImage(
                      directMessageDB.getDirectMessageById(element).imagePath),
                ),
                title: Text(
                    directMessageDB.getDirectMessageById(element).senderid),
                subtitle:
                    Text(directMessageDB.getDirectMessageById(element).content),
                trailing: Text(
                    directMessageDB.getDirectMessageById(element).timestamp),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DirectMessage()));
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
