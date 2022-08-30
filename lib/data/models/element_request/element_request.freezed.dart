// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'element_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ElementRequest _$ElementRequestFromJson(Map<String, dynamic> json) {
  return _ElementRequest.fromJson(json);
}

/// @nodoc
mixin _$ElementRequest {
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'element')
  Todo get element => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElementRequestCopyWith<ElementRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementRequestCopyWith<$Res> {
  factory $ElementRequestCopyWith(
          ElementRequest value, $Res Function(ElementRequest) then) =
      _$ElementRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'element') Todo element});

  $TodoCopyWith<$Res> get element;
}

/// @nodoc
class _$ElementRequestCopyWithImpl<$Res>
    implements $ElementRequestCopyWith<$Res> {
  _$ElementRequestCopyWithImpl(this._value, this._then);

  final ElementRequest _value;
  // ignore: unused_field
  final $Res Function(ElementRequest) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? element = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      element: element == freezed
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get element {
    return $TodoCopyWith<$Res>(_value.element, (value) {
      return _then(_value.copyWith(element: value));
    });
  }
}

/// @nodoc
abstract class _$$_ElementRequestCopyWith<$Res>
    implements $ElementRequestCopyWith<$Res> {
  factory _$$_ElementRequestCopyWith(
          _$_ElementRequest value, $Res Function(_$_ElementRequest) then) =
      __$$_ElementRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'element') Todo element});

  @override
  $TodoCopyWith<$Res> get element;
}

/// @nodoc
class __$$_ElementRequestCopyWithImpl<$Res>
    extends _$ElementRequestCopyWithImpl<$Res>
    implements _$$_ElementRequestCopyWith<$Res> {
  __$$_ElementRequestCopyWithImpl(
      _$_ElementRequest _value, $Res Function(_$_ElementRequest) _then)
      : super(_value, (v) => _then(v as _$_ElementRequest));

  @override
  _$_ElementRequest get _value => super._value as _$_ElementRequest;

  @override
  $Res call({
    Object? status = freezed,
    Object? element = freezed,
  }) {
    return _then(_$_ElementRequest(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      element: element == freezed
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElementRequest implements _ElementRequest {
  const _$_ElementRequest(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'element') required this.element});

  factory _$_ElementRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ElementRequestFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'element')
  final Todo element;

  @override
  String toString() {
    return 'ElementRequest(status: $status, element: $element)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElementRequest &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.element, element));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(element));

  @JsonKey(ignore: true)
  @override
  _$$_ElementRequestCopyWith<_$_ElementRequest> get copyWith =>
      __$$_ElementRequestCopyWithImpl<_$_ElementRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElementRequestToJson(
      this,
    );
  }
}

abstract class _ElementRequest implements ElementRequest {
  const factory _ElementRequest(
          {@JsonKey(name: 'status') required final String status,
          @JsonKey(name: 'element') required final Todo element}) =
      _$_ElementRequest;

  factory _ElementRequest.fromJson(Map<String, dynamic> json) =
      _$_ElementRequest.fromJson;

  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'element')
  Todo get element;
  @override
  @JsonKey(ignore: true)
  _$$_ElementRequestCopyWith<_$_ElementRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
