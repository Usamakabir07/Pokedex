// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_pokemon_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchPokemonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PokemonResponse> pokemons) success,
    required TResult Function(Failure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PokemonResponse> pokemons)? success,
    TResult? Function(Failure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PokemonResponse> pokemons)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchPokemonStateInitial value) initial,
    required TResult Function(_SearchPokemonStateLoading value) loading,
    required TResult Function(_SearchPokemonStateSuccess value) success,
    required TResult Function(_SearchPokemonStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchPokemonStateInitial value)? initial,
    TResult? Function(_SearchPokemonStateLoading value)? loading,
    TResult? Function(_SearchPokemonStateSuccess value)? success,
    TResult? Function(_SearchPokemonStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPokemonStateInitial value)? initial,
    TResult Function(_SearchPokemonStateLoading value)? loading,
    TResult Function(_SearchPokemonStateSuccess value)? success,
    TResult Function(_SearchPokemonStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPokemonStateCopyWith<$Res> {
  factory $SearchPokemonStateCopyWith(
          SearchPokemonState value, $Res Function(SearchPokemonState) then) =
      _$SearchPokemonStateCopyWithImpl<$Res, SearchPokemonState>;
}

/// @nodoc
class _$SearchPokemonStateCopyWithImpl<$Res, $Val extends SearchPokemonState>
    implements $SearchPokemonStateCopyWith<$Res> {
  _$SearchPokemonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchPokemonState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchPokemonStateInitialImplCopyWith<$Res> {
  factory _$$SearchPokemonStateInitialImplCopyWith(
          _$SearchPokemonStateInitialImpl value,
          $Res Function(_$SearchPokemonStateInitialImpl) then) =
      __$$SearchPokemonStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchPokemonStateInitialImplCopyWithImpl<$Res>
    extends _$SearchPokemonStateCopyWithImpl<$Res,
        _$SearchPokemonStateInitialImpl>
    implements _$$SearchPokemonStateInitialImplCopyWith<$Res> {
  __$$SearchPokemonStateInitialImplCopyWithImpl(
      _$SearchPokemonStateInitialImpl _value,
      $Res Function(_$SearchPokemonStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchPokemonState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchPokemonStateInitialImpl implements _SearchPokemonStateInitial {
  const _$SearchPokemonStateInitialImpl();

  @override
  String toString() {
    return 'SearchPokemonState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPokemonStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PokemonResponse> pokemons) success,
    required TResult Function(Failure error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PokemonResponse> pokemons)? success,
    TResult? Function(Failure error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PokemonResponse> pokemons)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchPokemonStateInitial value) initial,
    required TResult Function(_SearchPokemonStateLoading value) loading,
    required TResult Function(_SearchPokemonStateSuccess value) success,
    required TResult Function(_SearchPokemonStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchPokemonStateInitial value)? initial,
    TResult? Function(_SearchPokemonStateLoading value)? loading,
    TResult? Function(_SearchPokemonStateSuccess value)? success,
    TResult? Function(_SearchPokemonStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPokemonStateInitial value)? initial,
    TResult Function(_SearchPokemonStateLoading value)? loading,
    TResult Function(_SearchPokemonStateSuccess value)? success,
    TResult Function(_SearchPokemonStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchPokemonStateInitial implements SearchPokemonState {
  const factory _SearchPokemonStateInitial() = _$SearchPokemonStateInitialImpl;
}

/// @nodoc
abstract class _$$SearchPokemonStateLoadingImplCopyWith<$Res> {
  factory _$$SearchPokemonStateLoadingImplCopyWith(
          _$SearchPokemonStateLoadingImpl value,
          $Res Function(_$SearchPokemonStateLoadingImpl) then) =
      __$$SearchPokemonStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchPokemonStateLoadingImplCopyWithImpl<$Res>
    extends _$SearchPokemonStateCopyWithImpl<$Res,
        _$SearchPokemonStateLoadingImpl>
    implements _$$SearchPokemonStateLoadingImplCopyWith<$Res> {
  __$$SearchPokemonStateLoadingImplCopyWithImpl(
      _$SearchPokemonStateLoadingImpl _value,
      $Res Function(_$SearchPokemonStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchPokemonState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchPokemonStateLoadingImpl implements _SearchPokemonStateLoading {
  const _$SearchPokemonStateLoadingImpl();

  @override
  String toString() {
    return 'SearchPokemonState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPokemonStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PokemonResponse> pokemons) success,
    required TResult Function(Failure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PokemonResponse> pokemons)? success,
    TResult? Function(Failure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PokemonResponse> pokemons)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchPokemonStateInitial value) initial,
    required TResult Function(_SearchPokemonStateLoading value) loading,
    required TResult Function(_SearchPokemonStateSuccess value) success,
    required TResult Function(_SearchPokemonStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchPokemonStateInitial value)? initial,
    TResult? Function(_SearchPokemonStateLoading value)? loading,
    TResult? Function(_SearchPokemonStateSuccess value)? success,
    TResult? Function(_SearchPokemonStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPokemonStateInitial value)? initial,
    TResult Function(_SearchPokemonStateLoading value)? loading,
    TResult Function(_SearchPokemonStateSuccess value)? success,
    TResult Function(_SearchPokemonStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchPokemonStateLoading implements SearchPokemonState {
  const factory _SearchPokemonStateLoading() = _$SearchPokemonStateLoadingImpl;
}

/// @nodoc
abstract class _$$SearchPokemonStateSuccessImplCopyWith<$Res> {
  factory _$$SearchPokemonStateSuccessImplCopyWith(
          _$SearchPokemonStateSuccessImpl value,
          $Res Function(_$SearchPokemonStateSuccessImpl) then) =
      __$$SearchPokemonStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PokemonResponse> pokemons});
}

/// @nodoc
class __$$SearchPokemonStateSuccessImplCopyWithImpl<$Res>
    extends _$SearchPokemonStateCopyWithImpl<$Res,
        _$SearchPokemonStateSuccessImpl>
    implements _$$SearchPokemonStateSuccessImplCopyWith<$Res> {
  __$$SearchPokemonStateSuccessImplCopyWithImpl(
      _$SearchPokemonStateSuccessImpl _value,
      $Res Function(_$SearchPokemonStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchPokemonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = null,
  }) {
    return _then(_$SearchPokemonStateSuccessImpl(
      pokemons: null == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonResponse>,
    ));
  }
}

/// @nodoc

class _$SearchPokemonStateSuccessImpl implements _SearchPokemonStateSuccess {
  const _$SearchPokemonStateSuccessImpl(
      {required final List<PokemonResponse> pokemons})
      : _pokemons = pokemons;

  final List<PokemonResponse> _pokemons;
  @override
  List<PokemonResponse> get pokemons {
    if (_pokemons is EqualUnmodifiableListView) return _pokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  String toString() {
    return 'SearchPokemonState.success(pokemons: $pokemons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPokemonStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pokemons));

  /// Create a copy of SearchPokemonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPokemonStateSuccessImplCopyWith<_$SearchPokemonStateSuccessImpl>
      get copyWith => __$$SearchPokemonStateSuccessImplCopyWithImpl<
          _$SearchPokemonStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PokemonResponse> pokemons) success,
    required TResult Function(Failure error) error,
  }) {
    return success(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PokemonResponse> pokemons)? success,
    TResult? Function(Failure error)? error,
  }) {
    return success?.call(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PokemonResponse> pokemons)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(pokemons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchPokemonStateInitial value) initial,
    required TResult Function(_SearchPokemonStateLoading value) loading,
    required TResult Function(_SearchPokemonStateSuccess value) success,
    required TResult Function(_SearchPokemonStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchPokemonStateInitial value)? initial,
    TResult? Function(_SearchPokemonStateLoading value)? loading,
    TResult? Function(_SearchPokemonStateSuccess value)? success,
    TResult? Function(_SearchPokemonStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPokemonStateInitial value)? initial,
    TResult Function(_SearchPokemonStateLoading value)? loading,
    TResult Function(_SearchPokemonStateSuccess value)? success,
    TResult Function(_SearchPokemonStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SearchPokemonStateSuccess implements SearchPokemonState {
  const factory _SearchPokemonStateSuccess(
          {required final List<PokemonResponse> pokemons}) =
      _$SearchPokemonStateSuccessImpl;

  List<PokemonResponse> get pokemons;

  /// Create a copy of SearchPokemonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchPokemonStateSuccessImplCopyWith<_$SearchPokemonStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchPokemonStateErrorImplCopyWith<$Res> {
  factory _$$SearchPokemonStateErrorImplCopyWith(
          _$SearchPokemonStateErrorImpl value,
          $Res Function(_$SearchPokemonStateErrorImpl) then) =
      __$$SearchPokemonStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure error});

  $FailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$SearchPokemonStateErrorImplCopyWithImpl<$Res>
    extends _$SearchPokemonStateCopyWithImpl<$Res,
        _$SearchPokemonStateErrorImpl>
    implements _$$SearchPokemonStateErrorImplCopyWith<$Res> {
  __$$SearchPokemonStateErrorImplCopyWithImpl(
      _$SearchPokemonStateErrorImpl _value,
      $Res Function(_$SearchPokemonStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchPokemonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SearchPokemonStateErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of SearchPokemonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get error {
    return $FailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$SearchPokemonStateErrorImpl implements _SearchPokemonStateError {
  const _$SearchPokemonStateErrorImpl(this.error);

  @override
  final Failure error;

  @override
  String toString() {
    return 'SearchPokemonState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPokemonStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SearchPokemonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPokemonStateErrorImplCopyWith<_$SearchPokemonStateErrorImpl>
      get copyWith => __$$SearchPokemonStateErrorImplCopyWithImpl<
          _$SearchPokemonStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PokemonResponse> pokemons) success,
    required TResult Function(Failure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PokemonResponse> pokemons)? success,
    TResult? Function(Failure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PokemonResponse> pokemons)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchPokemonStateInitial value) initial,
    required TResult Function(_SearchPokemonStateLoading value) loading,
    required TResult Function(_SearchPokemonStateSuccess value) success,
    required TResult Function(_SearchPokemonStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchPokemonStateInitial value)? initial,
    TResult? Function(_SearchPokemonStateLoading value)? loading,
    TResult? Function(_SearchPokemonStateSuccess value)? success,
    TResult? Function(_SearchPokemonStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPokemonStateInitial value)? initial,
    TResult Function(_SearchPokemonStateLoading value)? loading,
    TResult Function(_SearchPokemonStateSuccess value)? success,
    TResult Function(_SearchPokemonStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SearchPokemonStateError implements SearchPokemonState {
  const factory _SearchPokemonStateError(final Failure error) =
      _$SearchPokemonStateErrorImpl;

  Failure get error;

  /// Create a copy of SearchPokemonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchPokemonStateErrorImplCopyWith<_$SearchPokemonStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
