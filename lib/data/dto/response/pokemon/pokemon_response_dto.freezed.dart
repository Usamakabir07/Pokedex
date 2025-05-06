// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonResponseDto _$PokemonResponseDtoFromJson(Map<String, dynamic> json) {
  return _PokemonResponseDto.fromJson(json);
}

/// @nodoc
mixin _$PokemonResponseDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_experience')
  int get baseExperience => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  List<AbilityDto> get abilities => throw _privateConstructorUsedError;
  List<TypeDto> get types => throw _privateConstructorUsedError;
  List<StatDto> get stats => throw _privateConstructorUsedError;

  /// Serializes this PokemonResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonResponseDtoCopyWith<PokemonResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonResponseDtoCopyWith<$Res> {
  factory $PokemonResponseDtoCopyWith(
          PokemonResponseDto value, $Res Function(PokemonResponseDto) then) =
      _$PokemonResponseDtoCopyWithImpl<$Res, PokemonResponseDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'base_experience') int baseExperience,
      int height,
      int weight,
      List<AbilityDto> abilities,
      List<TypeDto> types,
      List<StatDto> stats});
}

/// @nodoc
class _$PokemonResponseDtoCopyWithImpl<$Res, $Val extends PokemonResponseDto>
    implements $PokemonResponseDtoCopyWith<$Res> {
  _$PokemonResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? baseExperience = null,
    Object? height = null,
    Object? weight = null,
    Object? abilities = null,
    Object? types = null,
    Object? stats = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityDto>,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeDto>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonResponseDtoImplCopyWith<$Res>
    implements $PokemonResponseDtoCopyWith<$Res> {
  factory _$$PokemonResponseDtoImplCopyWith(_$PokemonResponseDtoImpl value,
          $Res Function(_$PokemonResponseDtoImpl) then) =
      __$$PokemonResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'base_experience') int baseExperience,
      int height,
      int weight,
      List<AbilityDto> abilities,
      List<TypeDto> types,
      List<StatDto> stats});
}

/// @nodoc
class __$$PokemonResponseDtoImplCopyWithImpl<$Res>
    extends _$PokemonResponseDtoCopyWithImpl<$Res, _$PokemonResponseDtoImpl>
    implements _$$PokemonResponseDtoImplCopyWith<$Res> {
  __$$PokemonResponseDtoImplCopyWithImpl(_$PokemonResponseDtoImpl _value,
      $Res Function(_$PokemonResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? baseExperience = null,
    Object? height = null,
    Object? weight = null,
    Object? abilities = null,
    Object? types = null,
    Object? stats = null,
  }) {
    return _then(_$PokemonResponseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityDto>,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeDto>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonResponseDtoImpl implements _PokemonResponseDto {
  const _$PokemonResponseDtoImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'base_experience') required this.baseExperience,
      required this.height,
      required this.weight,
      required final List<AbilityDto> abilities,
      required final List<TypeDto> types,
      required final List<StatDto> stats})
      : _abilities = abilities,
        _types = types,
        _stats = stats;

  factory _$PokemonResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonResponseDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'base_experience')
  final int baseExperience;
  @override
  final int height;
  @override
  final int weight;
  final List<AbilityDto> _abilities;
  @override
  List<AbilityDto> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  final List<TypeDto> _types;
  @override
  List<TypeDto> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<StatDto> _stats;
  @override
  List<StatDto> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  String toString() {
    return 'PokemonResponseDto(id: $id, name: $name, baseExperience: $baseExperience, height: $height, weight: $weight, abilities: $abilities, types: $types, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.baseExperience, baseExperience) ||
                other.baseExperience == baseExperience) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      baseExperience,
      height,
      weight,
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_stats));

  /// Create a copy of PokemonResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonResponseDtoImplCopyWith<_$PokemonResponseDtoImpl> get copyWith =>
      __$$PokemonResponseDtoImplCopyWithImpl<_$PokemonResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _PokemonResponseDto implements PokemonResponseDto {
  const factory _PokemonResponseDto(
      {required final int id,
      required final String name,
      @JsonKey(name: 'base_experience') required final int baseExperience,
      required final int height,
      required final int weight,
      required final List<AbilityDto> abilities,
      required final List<TypeDto> types,
      required final List<StatDto> stats}) = _$PokemonResponseDtoImpl;

  factory _PokemonResponseDto.fromJson(Map<String, dynamic> json) =
      _$PokemonResponseDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'base_experience')
  int get baseExperience;
  @override
  int get height;
  @override
  int get weight;
  @override
  List<AbilityDto> get abilities;
  @override
  List<TypeDto> get types;
  @override
  List<StatDto> get stats;

  /// Create a copy of PokemonResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonResponseDtoImplCopyWith<_$PokemonResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AbilityDto _$AbilityDtoFromJson(Map<String, dynamic> json) {
  return _AbilityDto.fromJson(json);
}

/// @nodoc
mixin _$AbilityDto {
  NamedApiResource get ability => throw _privateConstructorUsedError;

  /// Serializes this AbilityDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AbilityDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AbilityDtoCopyWith<AbilityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityDtoCopyWith<$Res> {
  factory $AbilityDtoCopyWith(
          AbilityDto value, $Res Function(AbilityDto) then) =
      _$AbilityDtoCopyWithImpl<$Res, AbilityDto>;
  @useResult
  $Res call({NamedApiResource ability});

  $NamedApiResourceCopyWith<$Res> get ability;
}

/// @nodoc
class _$AbilityDtoCopyWithImpl<$Res, $Val extends AbilityDto>
    implements $AbilityDtoCopyWith<$Res> {
  _$AbilityDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AbilityDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
  }) {
    return _then(_value.copyWith(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ) as $Val);
  }

  /// Create a copy of AbilityDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedApiResourceCopyWith<$Res> get ability {
    return $NamedApiResourceCopyWith<$Res>(_value.ability, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AbilityDtoImplCopyWith<$Res>
    implements $AbilityDtoCopyWith<$Res> {
  factory _$$AbilityDtoImplCopyWith(
          _$AbilityDtoImpl value, $Res Function(_$AbilityDtoImpl) then) =
      __$$AbilityDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NamedApiResource ability});

  @override
  $NamedApiResourceCopyWith<$Res> get ability;
}

/// @nodoc
class __$$AbilityDtoImplCopyWithImpl<$Res>
    extends _$AbilityDtoCopyWithImpl<$Res, _$AbilityDtoImpl>
    implements _$$AbilityDtoImplCopyWith<$Res> {
  __$$AbilityDtoImplCopyWithImpl(
      _$AbilityDtoImpl _value, $Res Function(_$AbilityDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AbilityDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
  }) {
    return _then(_$AbilityDtoImpl(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbilityDtoImpl implements _AbilityDto {
  const _$AbilityDtoImpl({required this.ability});

  factory _$AbilityDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbilityDtoImplFromJson(json);

  @override
  final NamedApiResource ability;

  @override
  String toString() {
    return 'AbilityDto(ability: $ability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilityDtoImpl &&
            (identical(other.ability, ability) || other.ability == ability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ability);

  /// Create a copy of AbilityDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilityDtoImplCopyWith<_$AbilityDtoImpl> get copyWith =>
      __$$AbilityDtoImplCopyWithImpl<_$AbilityDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbilityDtoImplToJson(
      this,
    );
  }
}

abstract class _AbilityDto implements AbilityDto {
  const factory _AbilityDto({required final NamedApiResource ability}) =
      _$AbilityDtoImpl;

  factory _AbilityDto.fromJson(Map<String, dynamic> json) =
      _$AbilityDtoImpl.fromJson;

  @override
  NamedApiResource get ability;

  /// Create a copy of AbilityDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AbilityDtoImplCopyWith<_$AbilityDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeDto _$TypeDtoFromJson(Map<String, dynamic> json) {
  return _TypeDto.fromJson(json);
}

/// @nodoc
mixin _$TypeDto {
  NamedApiResource get type => throw _privateConstructorUsedError;

  /// Serializes this TypeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TypeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TypeDtoCopyWith<TypeDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeDtoCopyWith<$Res> {
  factory $TypeDtoCopyWith(TypeDto value, $Res Function(TypeDto) then) =
      _$TypeDtoCopyWithImpl<$Res, TypeDto>;
  @useResult
  $Res call({NamedApiResource type});

  $NamedApiResourceCopyWith<$Res> get type;
}

/// @nodoc
class _$TypeDtoCopyWithImpl<$Res, $Val extends TypeDto>
    implements $TypeDtoCopyWith<$Res> {
  _$TypeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ) as $Val);
  }

  /// Create a copy of TypeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedApiResourceCopyWith<$Res> get type {
    return $NamedApiResourceCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TypeDtoImplCopyWith<$Res> implements $TypeDtoCopyWith<$Res> {
  factory _$$TypeDtoImplCopyWith(
          _$TypeDtoImpl value, $Res Function(_$TypeDtoImpl) then) =
      __$$TypeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NamedApiResource type});

  @override
  $NamedApiResourceCopyWith<$Res> get type;
}

/// @nodoc
class __$$TypeDtoImplCopyWithImpl<$Res>
    extends _$TypeDtoCopyWithImpl<$Res, _$TypeDtoImpl>
    implements _$$TypeDtoImplCopyWith<$Res> {
  __$$TypeDtoImplCopyWithImpl(
      _$TypeDtoImpl _value, $Res Function(_$TypeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TypeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$TypeDtoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeDtoImpl implements _TypeDto {
  const _$TypeDtoImpl({required this.type});

  factory _$TypeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeDtoImplFromJson(json);

  @override
  final NamedApiResource type;

  @override
  String toString() {
    return 'TypeDto(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeDtoImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of TypeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeDtoImplCopyWith<_$TypeDtoImpl> get copyWith =>
      __$$TypeDtoImplCopyWithImpl<_$TypeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeDtoImplToJson(
      this,
    );
  }
}

abstract class _TypeDto implements TypeDto {
  const factory _TypeDto({required final NamedApiResource type}) =
      _$TypeDtoImpl;

  factory _TypeDto.fromJson(Map<String, dynamic> json) = _$TypeDtoImpl.fromJson;

  @override
  NamedApiResource get type;

  /// Create a copy of TypeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypeDtoImplCopyWith<_$TypeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatDto _$StatDtoFromJson(Map<String, dynamic> json) {
  return _StatDto.fromJson(json);
}

/// @nodoc
mixin _$StatDto {
  @JsonKey(name: 'base_stat')
  int get baseStat => throw _privateConstructorUsedError;
  NamedApiResource get stat => throw _privateConstructorUsedError;

  /// Serializes this StatDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatDtoCopyWith<StatDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatDtoCopyWith<$Res> {
  factory $StatDtoCopyWith(StatDto value, $Res Function(StatDto) then) =
      _$StatDtoCopyWithImpl<$Res, StatDto>;
  @useResult
  $Res call({@JsonKey(name: 'base_stat') int baseStat, NamedApiResource stat});

  $NamedApiResourceCopyWith<$Res> get stat;
}

/// @nodoc
class _$StatDtoCopyWithImpl<$Res, $Val extends StatDto>
    implements $StatDtoCopyWith<$Res> {
  _$StatDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ) as $Val);
  }

  /// Create a copy of StatDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedApiResourceCopyWith<$Res> get stat {
    return $NamedApiResourceCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatDtoImplCopyWith<$Res> implements $StatDtoCopyWith<$Res> {
  factory _$$StatDtoImplCopyWith(
          _$StatDtoImpl value, $Res Function(_$StatDtoImpl) then) =
      __$$StatDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'base_stat') int baseStat, NamedApiResource stat});

  @override
  $NamedApiResourceCopyWith<$Res> get stat;
}

/// @nodoc
class __$$StatDtoImplCopyWithImpl<$Res>
    extends _$StatDtoCopyWithImpl<$Res, _$StatDtoImpl>
    implements _$$StatDtoImplCopyWith<$Res> {
  __$$StatDtoImplCopyWithImpl(
      _$StatDtoImpl _value, $Res Function(_$StatDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? stat = null,
  }) {
    return _then(_$StatDtoImpl(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatDtoImpl implements _StatDto {
  const _$StatDtoImpl(
      {@JsonKey(name: 'base_stat') required this.baseStat, required this.stat});

  factory _$StatDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatDtoImplFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;
  @override
  final NamedApiResource stat;

  @override
  String toString() {
    return 'StatDto(baseStat: $baseStat, stat: $stat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatDtoImpl &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, stat);

  /// Create a copy of StatDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatDtoImplCopyWith<_$StatDtoImpl> get copyWith =>
      __$$StatDtoImplCopyWithImpl<_$StatDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatDtoImplToJson(
      this,
    );
  }
}

abstract class _StatDto implements StatDto {
  const factory _StatDto(
      {@JsonKey(name: 'base_stat') required final int baseStat,
      required final NamedApiResource stat}) = _$StatDtoImpl;

  factory _StatDto.fromJson(Map<String, dynamic> json) = _$StatDtoImpl.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @override
  NamedApiResource get stat;

  /// Create a copy of StatDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatDtoImplCopyWith<_$StatDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NamedApiResource _$NamedApiResourceFromJson(Map<String, dynamic> json) {
  return _NamedApiResource.fromJson(json);
}

/// @nodoc
mixin _$NamedApiResource {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this NamedApiResource to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NamedApiResource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NamedApiResourceCopyWith<NamedApiResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamedApiResourceCopyWith<$Res> {
  factory $NamedApiResourceCopyWith(
          NamedApiResource value, $Res Function(NamedApiResource) then) =
      _$NamedApiResourceCopyWithImpl<$Res, NamedApiResource>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$NamedApiResourceCopyWithImpl<$Res, $Val extends NamedApiResource>
    implements $NamedApiResourceCopyWith<$Res> {
  _$NamedApiResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NamedApiResource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NamedApiResourceImplCopyWith<$Res>
    implements $NamedApiResourceCopyWith<$Res> {
  factory _$$NamedApiResourceImplCopyWith(_$NamedApiResourceImpl value,
          $Res Function(_$NamedApiResourceImpl) then) =
      __$$NamedApiResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$NamedApiResourceImplCopyWithImpl<$Res>
    extends _$NamedApiResourceCopyWithImpl<$Res, _$NamedApiResourceImpl>
    implements _$$NamedApiResourceImplCopyWith<$Res> {
  __$$NamedApiResourceImplCopyWithImpl(_$NamedApiResourceImpl _value,
      $Res Function(_$NamedApiResourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of NamedApiResource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$NamedApiResourceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NamedApiResourceImpl implements _NamedApiResource {
  const _$NamedApiResourceImpl({required this.name, required this.url});

  factory _$NamedApiResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$NamedApiResourceImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'NamedApiResource(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NamedApiResourceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of NamedApiResource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NamedApiResourceImplCopyWith<_$NamedApiResourceImpl> get copyWith =>
      __$$NamedApiResourceImplCopyWithImpl<_$NamedApiResourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NamedApiResourceImplToJson(
      this,
    );
  }
}

abstract class _NamedApiResource implements NamedApiResource {
  const factory _NamedApiResource(
      {required final String name,
      required final String url}) = _$NamedApiResourceImpl;

  factory _NamedApiResource.fromJson(Map<String, dynamic> json) =
      _$NamedApiResourceImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of NamedApiResource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NamedApiResourceImplCopyWith<_$NamedApiResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
