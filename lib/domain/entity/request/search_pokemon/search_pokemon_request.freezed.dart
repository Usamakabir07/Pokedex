// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_pokemon_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchPokemonRequest {
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of SearchPokemonRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchPokemonRequestCopyWith<SearchPokemonRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPokemonRequestCopyWith<$Res> {
  factory $SearchPokemonRequestCopyWith(SearchPokemonRequest value,
          $Res Function(SearchPokemonRequest) then) =
      _$SearchPokemonRequestCopyWithImpl<$Res, SearchPokemonRequest>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$SearchPokemonRequestCopyWithImpl<$Res,
        $Val extends SearchPokemonRequest>
    implements $SearchPokemonRequestCopyWith<$Res> {
  _$SearchPokemonRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchPokemonRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchPokemonRequestImplCopyWith<$Res>
    implements $SearchPokemonRequestCopyWith<$Res> {
  factory _$$SearchPokemonRequestImplCopyWith(_$SearchPokemonRequestImpl value,
          $Res Function(_$SearchPokemonRequestImpl) then) =
      __$$SearchPokemonRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$SearchPokemonRequestImplCopyWithImpl<$Res>
    extends _$SearchPokemonRequestCopyWithImpl<$Res, _$SearchPokemonRequestImpl>
    implements _$$SearchPokemonRequestImplCopyWith<$Res> {
  __$$SearchPokemonRequestImplCopyWithImpl(_$SearchPokemonRequestImpl _value,
      $Res Function(_$SearchPokemonRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchPokemonRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$SearchPokemonRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchPokemonRequestImpl implements _SearchPokemonRequest {
  const _$SearchPokemonRequestImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'SearchPokemonRequest(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPokemonRequestImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of SearchPokemonRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPokemonRequestImplCopyWith<_$SearchPokemonRequestImpl>
      get copyWith =>
          __$$SearchPokemonRequestImplCopyWithImpl<_$SearchPokemonRequestImpl>(
              this, _$identity);
}

abstract class _SearchPokemonRequest implements SearchPokemonRequest {
  const factory _SearchPokemonRequest({required final String name}) =
      _$SearchPokemonRequestImpl;

  @override
  String get name;

  /// Create a copy of SearchPokemonRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchPokemonRequestImplCopyWith<_$SearchPokemonRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
