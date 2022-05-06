// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _Value value({String? message}) {
    return _Value(
      message: message,
    );
  }

  _Connection connection() {
    return const _Connection();
  }

  ServerError serverError({int? code, String? message}) {
    return ServerError(
      code: code,
      message: message,
    );
  }

  _Unexpected unexpected({String? message}) {
    return _Unexpected(
      message: message,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(int? code, String? message) serverError,
    required TResult Function(String? message) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Value value) value,
    required TResult Function(_Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$ValueCopyWith<$Res> {
  factory _$ValueCopyWith(_Value value, $Res Function(_Value) then) =
      __$ValueCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$ValueCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ValueCopyWith<$Res> {
  __$ValueCopyWithImpl(_Value _value, $Res Function(_Value) _then)
      : super(_value, (v) => _then(v as _Value));

  @override
  _Value get _value => super._value as _Value;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Value(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Value implements _Value {
  const _$_Value({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.value(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Value &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ValueCopyWith<_Value> get copyWith =>
      __$ValueCopyWithImpl<_Value>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(int? code, String? message) serverError,
    required TResult Function(String? message) unexpected,
  }) {
    return value(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? unexpected,
  }) {
    return value?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Value value) value,
    required TResult Function(_Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return value(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
  }) {
    return value?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(this);
    }
    return orElse();
  }
}

abstract class _Value implements Failure {
  const factory _Value({String? message}) = _$_Value;

  String? get message;
  @JsonKey(ignore: true)
  _$ValueCopyWith<_Value> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConnectionCopyWith<$Res> {
  factory _$ConnectionCopyWith(
          _Connection value, $Res Function(_Connection) then) =
      __$ConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConnectionCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ConnectionCopyWith<$Res> {
  __$ConnectionCopyWithImpl(
      _Connection _value, $Res Function(_Connection) _then)
      : super(_value, (v) => _then(v as _Connection));

  @override
  _Connection get _value => super._value as _Connection;
}

/// @nodoc

class _$_Connection implements _Connection {
  const _$_Connection();

  @override
  String toString() {
    return 'Failure.connection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Connection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(int? code, String? message) serverError,
    required TResult Function(String? message) unexpected,
  }) {
    return connection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? unexpected,
  }) {
    return connection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Value value) value,
    required TResult Function(_Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return connection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
  }) {
    return connection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(this);
    }
    return orElse();
  }
}

abstract class _Connection implements Failure {
  const factory _Connection() = _$_Connection;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
  $Res call({int? code, String? message});
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(ServerError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError({this.code, this.message});

  @override
  final int? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.serverError(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServerError &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ServerErrorCopyWith<ServerError> get copyWith =>
      _$ServerErrorCopyWithImpl<ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(int? code, String? message) serverError,
    required TResult Function(String? message) unexpected,
  }) {
    return serverError(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? unexpected,
  }) {
    return serverError?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Value value) value,
    required TResult Function(_Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements Failure {
  const factory ServerError({int? code, String? message}) = _$ServerError;

  int? get code;
  String? get message;
  @JsonKey(ignore: true)
  $ServerErrorCopyWith<ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Unexpected(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.unexpected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Unexpected &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$UnexpectedCopyWith<_Unexpected> get copyWith =>
      __$UnexpectedCopyWithImpl<_Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) value,
    required TResult Function() connection,
    required TResult Function(int? code, String? message) serverError,
    required TResult Function(String? message) unexpected,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? unexpected,
  }) {
    return unexpected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? value,
    TResult Function()? connection,
    TResult Function(int? code, String? message)? serverError,
    TResult Function(String? message)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Value value) value,
    required TResult Function(_Connection value) connection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Value value)? value,
    TResult Function(_Connection value)? connection,
    TResult Function(ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements Failure {
  const factory _Unexpected({String? message}) = _$_Unexpected;

  String? get message;
  @JsonKey(ignore: true)
  _$UnexpectedCopyWith<_Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}
