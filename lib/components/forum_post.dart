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
            const Row(children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/loginpic.png'),
                radius: 16,
              ),
              SizedBox(width: 9),
              Text('Username'),
              SizedBox(width: 9),
              Text(
                '1d',
                style: TextStyle(color: Colors.grey),
              ),
            ]),
            const SizedBox(height: 9),
            Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Title',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            const SizedBox(height: 2),
            const Text(
              'Lorem ipsum dolor sit amet. Ut fugiat velit quo suscipit autem est neque quia At doloremque quis. Est consequatur dolore aut voluptatem eius ut totam dolores aut rerum beatae est labore inventore! Est voluptatem consectetur eos delectus beatae aut iure quisquam ex Quis soluta a vitae aperiam est quis voluptatem et culpa nesciunt?',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Image.asset('assets/images/homepagepic.png',
                width: 150, height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.thumb_up, color: Colors.blue),
                      SizedBox(width: 8),
                      Text('4', style: TextStyle(color: Colors.blue)),
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
