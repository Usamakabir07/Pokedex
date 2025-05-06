import 'package:flutter/material.dart';

class Validators {
  const Validators._();

  static FormFieldValidator<String> match({
    required String pattern,
    required String errorText,
  }) =>
      (value) => !RegExp(pattern).hasMatch(value ?? '') ? errorText : null;

  static FormFieldValidator<String> isProvidedLength({
    required int length,
    required String errorText,
  }) =>
      (value) => (value?.length ?? 0) != length ? errorText : null;

  static FormFieldValidator<String> isLongerThan({
    required int length,
    required String errorText,
  }) =>
      (value) => (value?.length ?? 0) <= length ? errorText : null;

  static FormFieldValidator<String> isNoShorterThan({
    required int length,
    required String errorText,
  }) =>
      (value) => (value?.length ?? 0) < length ? errorText : null;

  static FormFieldValidator<String> isNotEmpty({required String errorText}) =>
      (value) => (value?.isEmpty ?? true) ? errorText : null;

  static FormFieldValidator<String> validateEmail({required String errorText}) =>
      (value) => !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value ?? '')
          ? errorText
          : null;

  static FormFieldValidator<String> isPasswordsMatch({
    required String errorText,
    required String Function() getPassword,
  }) =>
      (value) {
        if (value != getPassword()) {
          return errorText;
        }
        return null;
      };
  static FormFieldValidator<String> isNoDigits({required String errorText}) =>
      (value) => RegExp(r'\d').hasMatch(value ?? '') ? errorText : null;
  static FormFieldValidator<String> isInList({
    required List<String> list,
    required String errorText,
  }) =>
      (value) => list.contains(value) ? null : errorText;
}
