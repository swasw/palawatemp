import 'package:firebase_auth/firebase_auth.dart';
import 'package:palawa_services/features/auth/data/datasource/auth_datasource.dart';
import 'package:palawa_services/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuthDataSource dataSource;

  AuthRepositoryImpl(this.dataSource);

  @override
  Stream<User?> getUser() {
    return dataSource.getUser();
  }

  @override
  Future<User?> signIn(String email, String password) {
    return dataSource.signIn(email, password);
  }

  @override
  Future<void> signOut() {
    return dataSource.signOut();
  }
}
