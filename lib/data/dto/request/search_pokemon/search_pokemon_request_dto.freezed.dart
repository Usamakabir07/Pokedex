// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_pokemon_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchPokemonRequestDto _$SearchPokemonRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _SearchPokemonRequestDto.fromJson(json);
}

/// @nodoc
mixin _$SearchPokemonRequestDto {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SearchPokemonRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchPokemonRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchPokemonRequestDtoCopyWith<SearchPokemonRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPokemonRequestDtoCopyWith<$Res> {
  factory $SearchPokemonRequestDtoCopyWith(SearchPokemonRequestDto value,
          $Res Function(SearchPokemonRequestDto) then) =
      _$SearchPokemonRequestDtoCopyWithImpl<$Res, SearchPokemonRequestDto>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$SearchPokemonRequestDtoCopyWithImpl<$Res,
        $Val extends SearchPokemonRequestDto>
    implements $SearchPokemonRequestDtoCopyWith<$Res> {
  _$SearchPokemonRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchPokemonRequestDto
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
abstract class _$$SearchPokemonRequestDtoImplCopyWith<$Res>
    implements $SearchPokemonRequestDtoCopyWith<$Res> {
  factory _$$SearchPokemonRequestDtoImplCopyWith(
          _$SearchPokemonRequestDtoImpl value,
          $Res Function(_$SearchPokemonRequestDtoImpl) then) =
      __$$SearchPokemonRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$SearchPokemonRequestDtoImplCopyWithImpl<$Res>
    extends _$SearchPokemonRequestDtoCopyWithImpl<$Res,
        _$SearchPokemonRequestDtoImpl>
    implements _$$SearchPokemonRequestDtoImplCopyWith<$Res> {
  __$$SearchPokemonRequestDtoImplCopyWithImpl(
      _$SearchPokemonRequestDtoImpl _value,
      $Res Function(_$SearchPokemonRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchPokemonRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$SearchPokemonRequestDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchPokemonRequestDtoImpl implements _SearchPokemonRequestDto {
  const _$SearchPokemonRequestDtoImpl({required this.name});

  factory _$SearchPokemonRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchPokemonRequestDtoImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'SearchPokemonRequestDto(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPokemonRequestDtoImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of SearchPokemonRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPokemonRequestDtoImplCopyWith<_$SearchPokemonRequestDtoImpl>
      get copyWith => __$$SearchPokemonRequestDtoImplCopyWithImpl<
          _$SearchPokemonRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchPokemonRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchPokemonRequestDto implements SearchPokemonRequestDto {
  const factory _SearchPokemonRequestDto({required final String name}) =
      _$SearchPokemonRequestDtoImpl;

  factory _SearchPokemonRequestDto.fromJson(Map<String, dynamic> json) =
      _$SearchPokemonRequestDtoImpl.fromJson;

  @override
  String get name;

  /// Create a copy of SearchPokemonRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchPokemonRequestDtoImplCopyWith<_$SearchPokemonRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
