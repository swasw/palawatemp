import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palawa_services/features/auth/domain/usecases/getuser_usecase.dart';
import 'package:palawa_services/features/auth/domain/usecases/login_usecase.dart';
import 'package:palawa_services/features/auth/domain/usecases/logout_usecase.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final GetUserUseCase getUserUseCase;
  final LogoutUseCase logoutUseCase;

  AuthBloc(this.getUserUseCase, this.loginUseCase, this.logoutUseCase)
    : super(const AuthState()) {
    on<AuthLoginRequested>(_onLogin);
    on<AuthLogoutRequested>(_onLogout);
  }

  Future<void> _onLogin(
    AuthLoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final user = await loginUseCase.call(event.email, event.password);
      emit(state.copyWith(user: user, isLoading: false));
    } catch (e) {
      emit(state.copyWith(error: e.toString(), isLoading: false));
    }
  }

  Future<void> _onLogout(
    AuthLogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    await logoutUseCase.call();
    emit(const AuthState(user: null));
  }
}
