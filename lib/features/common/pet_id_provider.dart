import 'package:flutter_riverpod/flutter_riverpod.dart';

final petIdProvider = StateProvider<String>((ref) {
  String id = 'pet-001';
  return id;
});