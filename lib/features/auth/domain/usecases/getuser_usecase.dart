import 'package:firebase_auth/firebase_auth.dart';
import '../repositories/auth_repository.dart';

class GetUserUseCase {
  final AuthRepository repository;

  GetUserUseCase(this.repository);

  Stream<User?> call() {
    return repository.getUser();
  }
}
