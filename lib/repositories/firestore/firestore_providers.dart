import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_providers.g.dart';

@riverpod
FirebaseAuth firebaseAuth(FirebaseAuthRef ref) => FirebaseAuth.instance;

@riverpod
Stream<User?> authStateChanges(AuthStateChangesRef ref) =>
    ref.watch(firebaseAuthProvider).authStateChanges();
