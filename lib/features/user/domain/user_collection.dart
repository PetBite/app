import 'user.dart';

class UserCollection {
  UserCollection(users) : _users = users;

  final List<User> _users;

  User getUser(String userID) {
    return _users.firstWhere((user) => user.id == userID);
  }

  List<User> getUsers(List<String> userIDs) {
    return _users.where((user) => userIDs.contains(user.id)).toList();
  }
}
