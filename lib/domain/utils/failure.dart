import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums/app_error.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure({
    String? content,
    AppError? error,
  }) = _Failure;
}
