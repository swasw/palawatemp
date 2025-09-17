import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthDataSource {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthDataSource({FirebaseAuth? firebaseAuth})
    : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  /// Login user
  Future<User?> signIn(String email, String password) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return credential.user;
  }

  /// Logout
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  /// Listen user changes
  Stream<User?> getUser() {
    return _firebaseAuth.authStateChanges();
  }
}
