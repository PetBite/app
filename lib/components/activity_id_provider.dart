import 'package:flutter_riverpod/flutter_riverpod.dart';

final activityIdProvider = StateProvider<String>((ref) {
  String id = '';
  return id;
});