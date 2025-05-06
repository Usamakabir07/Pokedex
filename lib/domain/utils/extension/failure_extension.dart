import 'package:flutter/widgets.dart';

import '../../../domain/utils/failure.dart';
import '../enums/app_error.dart';

extension FailureExtension on Failure {
  String getMessage(BuildContext context) {
    switch (error) {
      case AppError.defaultError:
        return 'Something went wrong!';
      case AppError.noInternetConnection:
        return 'No internet connection';
      case AppError.authException:
        return 'Invalid login credentials, please try again';
      default:
        return 'Something went wrong!';
    }
  }
}
