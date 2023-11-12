
class DirectMessageData {
  DirectMessageData({
    required this.id,
    required this.first,
    required this.recieverid,
    required this.senderid,
    required this.content,
    required this.timestamp,
    required this.imagePath,
  });

  String id;
  bool first;
  String recieverid;
  String senderid;
  String content;
  String timestamp;
  String imagePath;
}

class DirectMessageDB {
  final List<DirectMessageData> _messages = [
    DirectMessageData(
        id: 'direct-message-001',
        first: true,
        recieverid: 'Keaton Wong',
        senderid: 'Philip M. Johnson',
        content: 'Your app is looking awesome! : ^)',
        timestamp: '10:14 AM',
        imagePath: 'assets/images/flutter_logo.png'),
    DirectMessageData(
        id: 'direct-message-002',
        first: false,
        recieverid: 'Philip M. Johnson',
        senderid: 'Keaton Wong',
        content: 'Thanks! : ^)',
        timestamp: '10:15 AM',
        imagePath: 'assets/images/flutter_logo.png'),
    DirectMessageData(
        id: 'direct-message-003',
        first: true,
        recieverid: 'Keaton Wong',
        senderid: 'Wenhao Qiu',
        content: 'nice',
        timestamp: '9:55 AM',
        imagePath: 'assets/images/flutter_logo.png'),
    DirectMessageData(
        id: 'direct-message-004',
        first: true,
        recieverid: 'Keaton Wong',
        senderid: 'Braydon Nagasako',
        content: 'thanks',
        timestamp: '8:42 AM',
        imagePath: 'assets/images/flutter_logo.png'),
  ];
  DirectMessageData getDirectMessageById(String id) {
    return directMessageDB._messages.firstWhere((element) => element.id == id);
  }

  static List<String> getDirectMessageIDs() {
    return directMessageDB._messages.map((element) => element.id).toList();
  }

  static List<String> getCoverMessageIDs() {
    List<DirectMessageData> coverMessages = directMessageDB._messages.where((element) => element.first).toList();
    return coverMessages.map((element) => element.id).toList();
  }
}

DirectMessageDB directMessageDB = DirectMessageDB();
