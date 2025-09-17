import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<User?> signIn(String email, String password);
  Future<void> signOut();
  Stream<User?> getUser();
}
