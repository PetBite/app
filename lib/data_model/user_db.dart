/// The data associated with users.
class UserData {
  UserData({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    this.imagePath,
    this.phone,
  });

  String id;
  String name;
  String email;
  String username;
  String? imagePath;
  String? phone;
}

/// Provides access to and operations on all defined users.
class UserDB {
  final List<UserData> _users = [
    UserData(
        id: 'user-001',
        name: 'Wenhao Qiu',
        username: '@wenhaoq',
        email: 'wenhaoq@hawaii.edu',
        imagePath: 'assets/images/doge.png',
        phone: '(808) 123-4567'),
    UserData(
        id: 'user-002',
        name: 'Braydon Nagasako',
        username: '@breadonn',
        email: 'braydonn@hawaii.edu',
        phone: '(808) 345-6789'),
    UserData(
        id: 'user-003',
        name: 'Keaton Wong',
        username: '@keatonw',
        email: 'keatonw@hawaii.edu'),
  ];

  UserData getUser(String userID) {
    return _users.firstWhere((userData) => userData.id == userID);
  }

  List<UserData> getUsers(List<String> userIDs) {
    return _users.where((userData) => userIDs.contains(userData.id)).toList();
  }
}

/// The singleton instance providing access to all user data for clients.
UserDB userDB = UserDB();

/// The currently logged in user.
String currentUserID = 'user-001';
