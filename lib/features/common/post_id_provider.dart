import 'package:flutter_riverpod/flutter_riverpod.dart';

final postIdProvider = StateProvider<String>((ref) {
  return 'post-001';
});
