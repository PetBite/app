import 'package:flutter/material.dart';

class CommunityMenu extends StatelessWidget {
  const CommunityMenu({super.key});

  static const routeName = '/community_menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Community'),
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          child: Column(children: [
            ListTile(
                leading: const Icon(Icons.forum, size: 35),
                title: const Text('Forum'),
                trailing: const Icon(Icons.arrow_forward_ios),
                shape: const Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(158, 158, 158, 0.4),
                  ),
                ),
                onTap: () => Navigator.pushNamed(context, '/forum_home')),
            const SizedBox(height: 5),
            ListTile(
              leading: const Icon(Icons.message, size: 35),
              title: const Text('DMs'),
              trailing: const Icon(Icons.arrow_forward_ios),
              shape: const Border(
                top: BorderSide(color: Color.fromRGBO(158, 158, 158, 0.4)),
                bottom: BorderSide(color: Color.fromRGBO(158, 158, 158, 0.4)),
              ),
              onTap: () => Navigator.pushNamed(context, '/direct_messages'),
            ),
            const SizedBox(height: 5),
            ListTile(
              leading: const Icon(Icons.book, size: 35),
              title: const Text('Pet Food List'),
              trailing: const Icon(Icons.arrow_forward_ios),
              shape: const Border(
                top: BorderSide(color: Color.fromRGBO(158, 158, 158, 0.4)),
                bottom: BorderSide(color: Color.fromRGBO(158, 158, 158, 0.4)),
              ),
              onTap: () => Navigator.pushNamed(context, '/pet_food'),
            ),
          ]),
        ));
  }
}
