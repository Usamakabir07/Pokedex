import '../backend_errors.dart';
import '../enums/app_error.dart';

AppError toAppError(String errorMsg) {
  try {
    switch (errorMsg) {
      case BackendErrors.invalidCredentials:
        return AppError.authException;
      case BackendErrors.noPokemonFound:
        return AppError.noPokemonFound;
      default:
        return AppError.defaultError;
    }
  } catch (e) {
    return AppError.defaultError;
  }
}
