import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/data_source/utils/storage_service.dart';

part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final StorageService _storageService;

  AuthCubit(this._storageService) : super(AuthInitial());

  Future<void> loadCredentials() async {
    final credentials = await _storageService.getCredentials();
    if (credentials.isNotEmpty) {
      emit(AuthLoggedIn(
          email: credentials['email']!, password: credentials['password']!));
    } else {
      emit(AuthLoggedOut());
    }
  }

  Future<void> saveCredentials(String email, String password) async {
    await _storageService.saveCredentials(email, password);
    emit(AuthLoggedIn(email: email, password: password));
  }

  Future<void> logout() async {
    await _storageService.removeCredentials();
    _storageService.clearAllPokemons();
    emit(AuthLoggedOut());
  }
}
