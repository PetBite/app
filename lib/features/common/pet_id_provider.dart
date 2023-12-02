import 'package:flutter_riverpod/flutter_riverpod.dart';

final petIdProvider = StateProvider<String>((ref) {
  return 'pet-001';
});
