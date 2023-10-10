import 'package:flutter/material.dart';

class DirectMessage extends StatefulWidget {
  const DirectMessage({super.key});

  @override
  State<DirectMessage> createState() => _DirectMessageState();
}

class _DirectMessageState extends State<DirectMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Row(children: [Text("@ Philip M. Johnson")])),
      body: SafeArea(
          child: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            title: Row(
              children: [
                Text("Philip M. Johnson",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                SizedBox(width: 10),
                Text("10:14 AM",
                    style: TextStyle(fontSize: 12, color: Colors.grey))
              ],
            ),
            subtitle: Text("Your app is looking awesome! : ^)",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                )),
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            title: Row(
              children: [
                Text("Keaton Wong",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                SizedBox(width: 10),
                Text("10:15 AM",
                    style: TextStyle(fontSize: 12, color: Colors.grey))
              ],
            ),
            subtitle: Text("Thanks! : ^)",
                style: TextStyle(
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
                  hintText: "Message @Philip M. Johnson",
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
