// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListResponse _$ListResponseFromJson(Map<String, dynamic> json) {
  return _ListResponse.fromJson(json);
}

/// @nodoc
mixin _$ListResponse {
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'list')
  List<Todo> get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'revision')
  int get revision => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListResponseCopyWith<ListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListResponseCopyWith<$Res> {
  factory $ListResponseCopyWith(
          ListResponse value, $Res Function(ListResponse) then) =
      _$ListResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'list') List<Todo> list,
      @JsonKey(name: 'revision') int revision});
}

/// @nodoc
class _$ListResponseCopyWithImpl<$Res> implements $ListResponseCopyWith<$Res> {
  _$ListResponseCopyWithImpl(this._value, this._then);

  final ListResponse _value;
  // ignore: unused_field
  final $Res Function(ListResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? revision = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ListResponseCopyWith<$Res>
    implements $ListResponseCopyWith<$Res> {
  factory _$$_ListResponseCopyWith(
          _$_ListResponse value, $Res Function(_$_ListResponse) then) =
      __$$_ListResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'list') List<Todo> list,
      @JsonKey(name: 'revision') int revision});
}

/// @nodoc
class __$$_ListResponseCopyWithImpl<$Res>
    extends _$ListResponseCopyWithImpl<$Res>
    implements _$$_ListResponseCopyWith<$Res> {
  __$$_ListResponseCopyWithImpl(
      _$_ListResponse _value, $Res Function(_$_ListResponse) _then)
      : super(_value, (v) => _then(v as _$_ListResponse));

  @override
  _$_ListResponse get _value => super._value as _$_ListResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? revision = freezed,
  }) {
    return _then(_$_ListResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListResponse implements _ListResponse {
  const _$_ListResponse(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'list') required final List<Todo> list,
      @JsonKey(name: 'revision') required this.revision})
      : _list = list;

  factory _$_ListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListResponseFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String status;
  final List<Todo> _list;
  @override
  @JsonKey(name: 'list')
  List<Todo> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: 'revision')
  final int revision;

  @override
  String toString() {
    return 'ListResponse(status: $status, list: $list, revision: $revision)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality().equals(other.revision, revision));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(revision));

  @JsonKey(ignore: true)
  @override
  _$$_ListResponseCopyWith<_$_ListResponse> get copyWith =>
      __$$_ListResponseCopyWithImpl<_$_ListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListResponseToJson(
      this,
    );
  }
}

abstract class _ListResponse implements ListResponse {
  const factory _ListResponse(
          {@JsonKey(name: 'status') required final String status,
          @JsonKey(name: 'list') required final List<Todo> list,
          @JsonKey(name: 'revision') required final int revision}) =
      _$_ListResponse;

  factory _ListResponse.fromJson(Map<String, dynamic> json) =
      _$_ListResponse.fromJson;

  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'list')
  List<Todo> get list;
  @override
  @JsonKey(name: 'revision')
  int get revision;
  @override
  @JsonKey(ignore: true)
  _$$_ListResponseCopyWith<_$_ListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
