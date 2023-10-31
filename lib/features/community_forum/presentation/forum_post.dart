import 'package:app/features/community_forum/domain/post_db.dart';
import 'package:flutter/material.dart';

class ForumPostCard extends StatelessWidget {
  final String url;
  const ForumPostCard({super.key, this.url = ''});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/loginpic.png'),
                radius: 16,
              ),
              const SizedBox(width: 9),
              Text(postDB.getPost('post-001').authorName),
              const SizedBox(width: 9),
              const Text(
                '1d',
                style: TextStyle(color: Colors.grey),
              ),
            ]),
            const SizedBox(height: 9),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  postDB.getPost('post-001').title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )),
            const SizedBox(height: 2),
            Text(
              postDB.getPost('post-001').content,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Image.asset('assets/images/homepagepic.png',
                width: 150, height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.thumb_up, color: Colors.blue),
                      const SizedBox(width: 8),
                      Text(postDB.getPost('post-001').likesCount.toString(),
                          style: const TextStyle(color: Colors.blue)),
                    ],
                  ),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.comment, color: Colors.blue),
                      SizedBox(width: 8),
                      Text('10', style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.share, color: Colors.blue),
                      SizedBox(width: 8),
                      Text('Share', style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
