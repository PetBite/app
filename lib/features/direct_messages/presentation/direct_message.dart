import 'package:flutter/material.dart';
import '../../data/direct_message_db.dart';

class DirectMessage extends StatefulWidget {
  const DirectMessage({super.key});

  @override
  State<DirectMessage> createState() => _DirectMessageState();
}

class _DirectMessageState extends State<DirectMessage> {
  List<String> directMessageIDs = DirectMessageDB.getDirectMessageIDs();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Row(children: [
            Text(directMessageDB
                .getDirectMessageById('direct-message-001')
                .senderid)
          ])),
      body: SafeArea(
          child: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              foregroundImage: AssetImage(directMessageDB
                  .getDirectMessageById('direct-message-001')
                  .imagePath),
            ),
            title: Row(
              children: [
                Text(
                    directMessageDB
                        .getDirectMessageById('direct-message-001')
                        .senderid,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold)),
                const SizedBox(width: 10),
                Text(
                    directMessageDB
                        .getDirectMessageById('direct-message-001')
                        .timestamp,
                    style: const TextStyle(fontSize: 12, color: Colors.grey))
              ],
            ),
            subtitle: Text(
                directMessageDB
                    .getDirectMessageById('direct-message-001')
                    .content,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                )),
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundImage: AssetImage(directMessageDB
                  .getDirectMessageById('direct-message-002')
                  .imagePath),
            ),
            title: Row(
              children: [
                Text(
                    directMessageDB
                        .getDirectMessageById('direct-message-002')
                        .senderid,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold)),
                const SizedBox(width: 10),
                Text(
                    directMessageDB
                        .getDirectMessageById('direct-message-002')
                        .timestamp,
                    style: const TextStyle(fontSize: 12, color: Colors.grey))
              ],
            ),
            subtitle: Text(
                directMessageDB
                    .getDirectMessageById('direct-message-002')
                    .content,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                )),
          ),
        ],
      )),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText:
                      "Message @${directMessageDB.getDirectMessageById('direct-message-001').senderid}",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
