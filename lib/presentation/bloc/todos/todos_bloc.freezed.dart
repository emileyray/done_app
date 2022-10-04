// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)
        edit,
    required TResult Function(Todo item, ActionTool actionTool) remove,
    required TResult Function(ActionTool actionTool, String text,
            Importance importance, String? color, Tag? tag, DateTime? deadline)
        add,
    required TResult Function() hideDone,
    required TResult Function() showDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)?
        edit,
    TResult Function(Todo item, ActionTool actionTool)? remove,
    TResult Function(ActionTool actionTool, String text, Importance importance,
            String? color, Tag? tag, DateTime? deadline)?
        add,
    TResult Function()? hideDone,
    TResult Function()? showDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)?
        edit,
    TResult Function(Todo item, ActionTool actionTool)? remove,
    TResult Function(ActionTool actionTool, String text, Importance importance,
            String? color, Tag? tag, DateTime? deadline)?
        add,
    TResult Function()? hideDone,
    TResult Function()? showDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Add value) add,
    required TResult Function(_HideDone value) hideDone,
    required TResult Function(_ShowDone value) showDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Edit value)? edit,
    TResult Function(_Remove value)? remove,
    TResult Function(_Add value)? add,
    TResult Function(_HideDone value)? hideDone,
    TResult Function(_ShowDone value)? showDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Edit value)? edit,
    TResult Function(_Remove value)? remove,
    TResult Function(_Add value)? add,
    TResult Function(_HideDone value)? hideDone,
    TResult Function(_ShowDone value)? showDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosEventCopyWith<$Res> {
  factory $TodosEventCopyWith(
          TodosEvent value, $Res Function(TodosEvent) then) =
      _$TodosEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosEventCopyWithImpl<$Res> implements $TodosEventCopyWith<$Res> {
  _$TodosEventCopyWithImpl(this._value, this._then);

  final TodosEvent _value;
  // ignore: unused_field
  final $Res Function(TodosEvent) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, (v) => _then(v as _$_Fetch));

  @override
  _$_Fetch get _value => super._value as _$_Fetch;
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch();

  @override
  String toString() {
    return 'TodosEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)
        edit,
    required TResult Function(Todo item, ActionTool actionTool) remove,
    required TResult Function(ActionTool actionTool, String text,
            Importance importance, String? color, Tag? tag, DateTime? deadline)
        add,
    required TResult Function() hideDone,
    required TResult Function() showDone,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)?
        edit,
    TResult Function(Todo item, ActionTool actionTool)? remove,
    TResult Function(ActionTool actionTool, String text, Importance importance,
            String? color, Tag? tag, DateTime? deadline)?
        add,
    TResult Function()? hideDone,
    TResult Function()? showDone,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)?
        edit,
    TResult Function(Todo item, ActionTool actionTool)? remove,
    TResult Function(ActionTool actionTool, String text, Importance importance,
            String? color, Tag? tag, DateTime? deadline)?
        add,
    TResult Function()? hideDone,
    TResult Function()? showDone,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Add value) add,
    required TResult Function(_HideDone value) hideDone,
    required TResult Function(_ShowDone value) showDone,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Edit value)? edit,
    TResult Function(_Remove value)? remove,
    TResult Function(_Add value)? add,
    TResult Function(_HideDone value)? hideDone,
    TResult Function(_ShowDone value)? showDone,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Edit value)? edit,
    TResult Function(_Remove value)? remove,
    TResult Function(_Add value)? add,
    TResult Function(_HideDone value)? hideDone,
    TResult Function(_ShowDone value)? showDone,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements TodosEvent {
  const factory _Fetch() = _$_Fetch;
}

/// @nodoc
abstract class _$$_EditCopyWith<$Res> {
  factory _$$_EditCopyWith(_$_Edit value, $Res Function(_$_Edit) then) =
      __$$_EditCopyWithImpl<$Res>;
  $Res call(
      {Todo item,
      ActionTool actionTool,
      String? text,
      Importance? importance,
      DateTime? deadline});

  $TodoCopyWith<$Res> get item;
}

/// @nodoc
class __$$_EditCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$$_EditCopyWith<$Res> {
  __$$_EditCopyWithImpl(_$_Edit _value, $Res Function(_$_Edit) _then)
      : super(_value, (v) => _then(v as _$_Edit));

  @override
  _$_Edit get _value => super._value as _$_Edit;

  @override
  $Res call({
    Object? item = freezed,
    Object? actionTool = freezed,
    Object? text = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_$_Edit(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Todo,
      actionTool: actionTool == freezed
          ? _value.actionTool
          : actionTool // ignore: cast_nullable_to_non_nullable
              as ActionTool,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as Importance?,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $TodoCopyWith<$Res> get item {
    return $TodoCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$_Edit implements _Edit {
  const _$_Edit(
      {required this.item,
      required this.actionTool,
      this.text,
      this.importance,
      this.deadline});

  @override
  final Todo item;
  @override
  final ActionTool actionTool;
  @override
  final String? text;
  @override
  final Importance? importance;
  @override
  final DateTime? deadline;

  @override
  String toString() {
    return 'TodosEvent.edit(item: $item, actionTool: $actionTool, text: $text, importance: $importance, deadline: $deadline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Edit &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality()
                .equals(other.actionTool, actionTool) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.importance, importance) &&
            const DeepCollectionEquality().equals(other.deadline, deadline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(actionTool),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(importance),
      const DeepCollectionEquality().hash(deadline));

  @JsonKey(ignore: true)
  @override
  _$$_EditCopyWith<_$_Edit> get copyWith =>
      __$$_EditCopyWithImpl<_$_Edit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)
        edit,
    required TResult Function(Todo item, ActionTool actionTool) remove,
    required TResult Function(ActionTool actionTool, String text,
            Importance importance, String? color, Tag? tag, DateTime? deadline)
        add,
    required TResult Function() hideDone,
    required TResult Function() showDone,
  }) {
    return edit(item, actionTool, text, importance, deadline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)?
        edit,
    TResult Function(Todo item, ActionTool actionTool)? remove,
    TResult Function(ActionTool actionTool, String text, Importance importance,
            String? color, Tag? tag, DateTime? deadline)?
        add,
    TResult Function()? hideDone,
    TResult Function()? showDone,
  }) {
    return edit?.call(item, actionTool, text, importance, deadline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)?
        edit,
    TResult Function(Todo item, ActionTool actionTool)? remove,
    TResult Function(ActionTool actionTool, String text, Importance importance,
            String? color, Tag? tag, DateTime? deadline)?
        add,
    TResult Function()? hideDone,
    TResult Function()? showDone,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(item, actionTool, text, importance, deadline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Add value) add,
    required TResult Function(_HideDone value) hideDone,
    required TResult Function(_ShowDone value) showDone,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Edit value)? edit,
    TResult Function(_Remove value)? remove,
    TResult Function(_Add value)? add,
    TResult Function(_HideDone value)? hideDone,
    TResult Function(_ShowDone value)? showDone,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Edit value)? edit,
    TResult Function(_Remove value)? remove,
    TResult Function(_Add value)? add,
    TResult Function(_HideDone value)? hideDone,
    TResult Function(_ShowDone value)? showDone,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _Edit implements TodosEvent {
  const factory _Edit(
      {required final Todo item,
      required final ActionTool actionTool,
      final String? text,
      final Importance? importance,
      final DateTime? deadline}) = _$_Edit;

  Todo get item;
  ActionTool get actionTool;
  String? get text;
  Importance? get importance;
  DateTime? get deadline;
  @JsonKey(ignore: true)
  _$$_EditCopyWith<_$_Edit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveCopyWith<$Res> {
  factory _$$_RemoveCopyWith(_$_Remove value, $Res Function(_$_Remove) then) =
      __$$_RemoveCopyWithImpl<$Res>;
  $Res call({Todo item, ActionTool actionTool});

  $TodoCopyWith<$Res> get item;
}

/// @nodoc
class __$$_RemoveCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$$_RemoveCopyWith<$Res> {
  __$$_RemoveCopyWithImpl(_$_Remove _value, $Res Function(_$_Remove) _then)
      : super(_value, (v) => _then(v as _$_Remove));

  @override
  _$_Remove get _value => super._value as _$_Remove;

  @override
  $Res call({
    Object? item = freezed,
    Object? actionTool = freezed,
  }) {
    return _then(_$_Remove(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Todo,
      actionTool: actionTool == freezed
          ? _value.actionTool
          : actionTool // ignore: cast_nullable_to_non_nullable
              as ActionTool,
    ));
  }

  @override
  $TodoCopyWith<$Res> get item {
    return $TodoCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$_Remove implements _Remove {
  const _$_Remove({required this.item, required this.actionTool});

  @override
  final Todo item;
  @override
  final ActionTool actionTool;

  @override
  String toString() {
    return 'TodosEvent.remove(item: $item, actionTool: $actionTool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Remove &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality()
                .equals(other.actionTool, actionTool));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(actionTool));

  @JsonKey(ignore: true)
  @override
  _$$_RemoveCopyWith<_$_Remove> get copyWith =>
      __$$_RemoveCopyWithImpl<_$_Remove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)
        edit,
    required TResult Function(Todo item, ActionTool actionTool) remove,
    required TResult Function(ActionTool actionTool, String text,
            Importance importance, String? color, Tag? tag, DateTime? deadline)
        add,
    required TResult Function() hideDone,
    required TResult Function() showDone,
  }) {
    return remove(item, actionTool);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)?
        edit,
    TResult Function(Todo item, ActionTool actionTool)? remove,
    TResult Function(ActionTool actionTool, String text, Importance importance,
            String? color, Tag? tag, DateTime? deadline)?
        add,
    TResult Function()? hideDone,
    TResult Function()? showDone,
  }) {
    return remove?.call(item, actionTool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)?
        edit,
    TResult Function(Todo item, ActionTool actionTool)? remove,
    TResult Function(ActionTool actionTool, String text, Importance importance,
            String? color, Tag? tag, DateTime? deadline)?
        add,
    TResult Function()? hideDone,
    TResult Function()? showDone,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(item, actionTool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Add value) add,
    required TResult Function(_HideDone value) hideDone,
    required TResult Function(_ShowDone value) showDone,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Edit value)? edit,
    TResult Function(_Remove value)? remove,
    TResult Function(_Add value)? add,
    TResult Function(_HideDone value)? hideDone,
    TResult Function(_ShowDone value)? showDone,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Edit value)? edit,
    TResult Function(_Remove value)? remove,
    TResult Function(_Add value)? add,
    TResult Function(_HideDone value)? hideDone,
    TResult Function(_ShowDone value)? showDone,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements TodosEvent {
  const factory _Remove(
      {required final Todo item,
      required final ActionTool actionTool}) = _$_Remove;

  Todo get item;
  ActionTool get actionTool;
  @JsonKey(ignore: true)
  _$$_RemoveCopyWith<_$_Remove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCopyWith<$Res> {
  factory _$$_AddCopyWith(_$_Add value, $Res Function(_$_Add) then) =
      __$$_AddCopyWithImpl<$Res>;
  $Res call(
      {ActionTool actionTool,
      String text,
      Importance importance,
      String? color,
      Tag? tag,
      DateTime? deadline});
}

/// @nodoc
class __$$_AddCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$$_AddCopyWith<$Res> {
  __$$_AddCopyWithImpl(_$_Add _value, $Res Function(_$_Add) _then)
      : super(_value, (v) => _then(v as _$_Add));

  @override
  _$_Add get _value => super._value as _$_Add;

  @override
  $Res call({
    Object? actionTool = freezed,
    Object? text = freezed,
    Object? importance = freezed,
    Object? color = freezed,
    Object? tag = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_$_Add(
      actionTool: actionTool == freezed
          ? _value.actionTool
          : actionTool // ignore: cast_nullable_to_non_nullable
              as ActionTool,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as Importance,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag?,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Add implements _Add {
  const _$_Add(
      {required this.actionTool,
      required this.text,
      required this.importance,
      this.color,
      this.tag,
      this.deadline});

  @override
  final ActionTool actionTool;
  @override
  final String text;
  @override
  final Importance importance;
  @override
  final String? color;
  @override
  final Tag? tag;
  @override
  final DateTime? deadline;

  @override
  String toString() {
    return 'TodosEvent.add(actionTool: $actionTool, text: $text, importance: $importance, color: $color, tag: $tag, deadline: $deadline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Add &&
            const DeepCollectionEquality()
                .equals(other.actionTool, actionTool) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.importance, importance) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.tag, tag) &&
            const DeepCollectionEquality().equals(other.deadline, deadline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(actionTool),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(importance),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(tag),
      const DeepCollectionEquality().hash(deadline));

  @JsonKey(ignore: true)
  @override
  _$$_AddCopyWith<_$_Add> get copyWith =>
      __$$_AddCopyWithImpl<_$_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)
        edit,
    required TResult Function(Todo item, ActionTool actionTool) remove,
    required TResult Function(ActionTool actionTool, String text,
            Importance importance, String? color, Tag? tag, DateTime? deadline)
        add,
    required TResult Function() hideDone,
    required TResult Function() showDone,
  }) {
    return add(actionTool, text, importance, color, tag, deadline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)?
        edit,
    TResult Function(Todo item, ActionTool actionTool)? remove,
    TResult Function(ActionTool actionTool, String text, Importance importance,
            String? color, Tag? tag, DateTime? deadline)?
        add,
    TResult Function()? hideDone,
    TResult Function()? showDone,
  }) {
    return add?.call(actionTool, text, importance, color, tag, deadline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)?
        edit,
    TResult Function(Todo item, ActionTool actionTool)? remove,
    TResult Function(ActionTool actionTool, String text, Importance importance,
            String? color, Tag? tag, DateTime? deadline)?
        add,
    TResult Function()? hideDone,
    TResult Function()? showDone,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(actionTool, text, importance, color, tag, deadline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Add value) add,
    required TResult Function(_HideDone value) hideDone,
    required TResult Function(_ShowDone value) showDone,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Edit value)? edit,
    TResult Function(_Remove value)? remove,
    TResult Function(_Add value)? add,
    TResult Function(_HideDone value)? hideDone,
    TResult Function(_ShowDone value)? showDone,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Edit value)? edit,
    TResult Function(_Remove value)? remove,
    TResult Function(_Add value)? add,
    TResult Function(_HideDone value)? hideDone,
    TResult Function(_ShowDone value)? showDone,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements TodosEvent {
  const factory _Add(
      {required final ActionTool actionTool,
      required final String text,
      required final Importance importance,
      final String? color,
      final Tag? tag,
      final DateTime? deadline}) = _$_Add;

  ActionTool get actionTool;
  String get text;
  Importance get importance;
  String? get color;
  Tag? get tag;
  DateTime? get deadline;
  @JsonKey(ignore: true)
  _$$_AddCopyWith<_$_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HideDoneCopyWith<$Res> {
  factory _$$_HideDoneCopyWith(
          _$_HideDone value, $Res Function(_$_HideDone) then) =
      __$$_HideDoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HideDoneCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$$_HideDoneCopyWith<$Res> {
  __$$_HideDoneCopyWithImpl(
      _$_HideDone _value, $Res Function(_$_HideDone) _then)
      : super(_value, (v) => _then(v as _$_HideDone));

  @override
  _$_HideDone get _value => super._value as _$_HideDone;
}

/// @nodoc

class _$_HideDone implements _HideDone {
  const _$_HideDone();

  @override
  String toString() {
    return 'TodosEvent.hideDone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HideDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)
        edit,
    required TResult Function(Todo item, ActionTool actionTool) remove,
    required TResult Function(ActionTool actionTool, String text,
            Importance importance, String? color, Tag? tag, DateTime? deadline)
        add,
    required TResult Function() hideDone,
    required TResult Function() showDone,
  }) {
    return hideDone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)?
        edit,
    TResult Function(Todo item, ActionTool actionTool)? remove,
    TResult Function(ActionTool actionTool, String text, Importance importance,
            String? color, Tag? tag, DateTime? deadline)?
        add,
    TResult Function()? hideDone,
    TResult Function()? showDone,
  }) {
    return hideDone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)?
        edit,
    TResult Function(Todo item, ActionTool actionTool)? remove,
    TResult Function(ActionTool actionTool, String text, Importance importance,
            String? color, Tag? tag, DateTime? deadline)?
        add,
    TResult Function()? hideDone,
    TResult Function()? showDone,
    required TResult orElse(),
  }) {
    if (hideDone != null) {
      return hideDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Add value) add,
    required TResult Function(_HideDone value) hideDone,
    required TResult Function(_ShowDone value) showDone,
  }) {
    return hideDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Edit value)? edit,
    TResult Function(_Remove value)? remove,
    TResult Function(_Add value)? add,
    TResult Function(_HideDone value)? hideDone,
    TResult Function(_ShowDone value)? showDone,
  }) {
    return hideDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Edit value)? edit,
    TResult Function(_Remove value)? remove,
    TResult Function(_Add value)? add,
    TResult Function(_HideDone value)? hideDone,
    TResult Function(_ShowDone value)? showDone,
    required TResult orElse(),
  }) {
    if (hideDone != null) {
      return hideDone(this);
    }
    return orElse();
  }
}

abstract class _HideDone implements TodosEvent {
  const factory _HideDone() = _$_HideDone;
}

/// @nodoc
abstract class _$$_ShowDoneCopyWith<$Res> {
  factory _$$_ShowDoneCopyWith(
          _$_ShowDone value, $Res Function(_$_ShowDone) then) =
      __$$_ShowDoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowDoneCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$$_ShowDoneCopyWith<$Res> {
  __$$_ShowDoneCopyWithImpl(
      _$_ShowDone _value, $Res Function(_$_ShowDone) _then)
      : super(_value, (v) => _then(v as _$_ShowDone));

  @override
  _$_ShowDone get _value => super._value as _$_ShowDone;
}

/// @nodoc

class _$_ShowDone implements _ShowDone {
  const _$_ShowDone();

  @override
  String toString() {
    return 'TodosEvent.showDone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShowDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)
        edit,
    required TResult Function(Todo item, ActionTool actionTool) remove,
    required TResult Function(ActionTool actionTool, String text,
            Importance importance, String? color, Tag? tag, DateTime? deadline)
        add,
    required TResult Function() hideDone,
    required TResult Function() showDone,
  }) {
    return showDone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)?
        edit,
    TResult Function(Todo item, ActionTool actionTool)? remove,
    TResult Function(ActionTool actionTool, String text, Importance importance,
            String? color, Tag? tag, DateTime? deadline)?
        add,
    TResult Function()? hideDone,
    TResult Function()? showDone,
  }) {
    return showDone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Todo item, ActionTool actionTool, String? text,
            Importance? importance, DateTime? deadline)?
        edit,
    TResult Function(Todo item, ActionTool actionTool)? remove,
    TResult Function(ActionTool actionTool, String text, Importance importance,
            String? color, Tag? tag, DateTime? deadline)?
        add,
    TResult Function()? hideDone,
    TResult Function()? showDone,
    required TResult orElse(),
  }) {
    if (showDone != null) {
      return showDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Add value) add,
    required TResult Function(_HideDone value) hideDone,
    required TResult Function(_ShowDone value) showDone,
  }) {
    return showDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Edit value)? edit,
    TResult Function(_Remove value)? remove,
    TResult Function(_Add value)? add,
    TResult Function(_HideDone value)? hideDone,
    TResult Function(_ShowDone value)? showDone,
  }) {
    return showDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Edit value)? edit,
    TResult Function(_Remove value)? remove,
    TResult Function(_Add value)? add,
    TResult Function(_HideDone value)? hideDone,
    TResult Function(_ShowDone value)? showDone,
    required TResult orElse(),
  }) {
    if (showDone != null) {
      return showDone(this);
    }
    return orElse();
  }
}

abstract class _ShowDone implements TodosEvent {
  const factory _ShowDone() = _$_ShowDone;
}

/// @nodoc
mixin _$TodosState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Todo> todos, bool showDone) dataFetched,
    required TResult Function(List<Todo> todos, Todo addedItem,
            ActionTool actionTool, bool showDone)
        added,
    required TResult Function(List<Todo> todos, Todo removedItem,
            ActionTool actionTool, bool showDone)
        removed,
    required TResult Function(List<Todo> todos, Todo editedItem,
            ActionTool actionTool, bool showDone)
        edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todos, bool showDone)? dataFetched,
    TResult Function(List<Todo> todos, Todo addedItem, ActionTool actionTool,
            bool showDone)?
        added,
    TResult Function(List<Todo> todos, Todo removedItem, ActionTool actionTool,
            bool showDone)?
        removed,
    TResult Function(List<Todo> todos, Todo editedItem, ActionTool actionTool,
            bool showDone)?
        edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todos, bool showDone)? dataFetched,
    TResult Function(List<Todo> todos, Todo addedItem, ActionTool actionTool,
            bool showDone)?
        added,
    TResult Function(List<Todo> todos, Todo removedItem, ActionTool actionTool,
            bool showDone)?
        removed,
    TResult Function(List<Todo> todos, Todo editedItem, ActionTool actionTool,
            bool showDone)?
        edited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataFetched value) dataFetched,
    required TResult Function(_Added value) added,
    required TResult Function(_Removed value) removed,
    required TResult Function(_Edited value) edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataFetched value)? dataFetched,
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataFetched value)? dataFetched,
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStateCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) then) =
      _$TodosStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosStateCopyWithImpl<$Res> implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(this._value, this._then);

  final TodosState _value;
  // ignore: unused_field
  final $Res Function(TodosState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TodosState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Todo> todos, bool showDone) dataFetched,
    required TResult Function(List<Todo> todos, Todo addedItem,
            ActionTool actionTool, bool showDone)
        added,
    required TResult Function(List<Todo> todos, Todo removedItem,
            ActionTool actionTool, bool showDone)
        removed,
    required TResult Function(List<Todo> todos, Todo editedItem,
            ActionTool actionTool, bool showDone)
        edited,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todos, bool showDone)? dataFetched,
    TResult Function(List<Todo> todos, Todo addedItem, ActionTool actionTool,
            bool showDone)?
        added,
    TResult Function(List<Todo> todos, Todo removedItem, ActionTool actionTool,
            bool showDone)?
        removed,
    TResult Function(List<Todo> todos, Todo editedItem, ActionTool actionTool,
            bool showDone)?
        edited,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todos, bool showDone)? dataFetched,
    TResult Function(List<Todo> todos, Todo addedItem, ActionTool actionTool,
            bool showDone)?
        added,
    TResult Function(List<Todo> todos, Todo removedItem, ActionTool actionTool,
            bool showDone)?
        removed,
    TResult Function(List<Todo> todos, Todo editedItem, ActionTool actionTool,
            bool showDone)?
        edited,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataFetched value) dataFetched,
    required TResult Function(_Added value) added,
    required TResult Function(_Removed value) removed,
    required TResult Function(_Edited value) edited,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataFetched value)? dataFetched,
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataFetched value)? dataFetched,
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TodosState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_DataFetchedCopyWith<$Res> {
  factory _$$_DataFetchedCopyWith(
          _$_DataFetched value, $Res Function(_$_DataFetched) then) =
      __$$_DataFetchedCopyWithImpl<$Res>;
  $Res call({List<Todo> todos, bool showDone});
}

/// @nodoc
class __$$_DataFetchedCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements _$$_DataFetchedCopyWith<$Res> {
  __$$_DataFetchedCopyWithImpl(
      _$_DataFetched _value, $Res Function(_$_DataFetched) _then)
      : super(_value, (v) => _then(v as _$_DataFetched));

  @override
  _$_DataFetched get _value => super._value as _$_DataFetched;

  @override
  $Res call({
    Object? todos = freezed,
    Object? showDone = freezed,
  }) {
    return _then(_$_DataFetched(
      todos: todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      showDone: showDone == freezed
          ? _value.showDone
          : showDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DataFetched implements _DataFetched {
  const _$_DataFetched({required final List<Todo> todos, this.showDone = false})
      : _todos = todos;

  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  @JsonKey()
  final bool showDone;

  @override
  String toString() {
    return 'TodosState.dataFetched(todos: $todos, showDone: $showDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataFetched &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality().equals(other.showDone, showDone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(showDone));

  @JsonKey(ignore: true)
  @override
  _$$_DataFetchedCopyWith<_$_DataFetched> get copyWith =>
      __$$_DataFetchedCopyWithImpl<_$_DataFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Todo> todos, bool showDone) dataFetched,
    required TResult Function(List<Todo> todos, Todo addedItem,
            ActionTool actionTool, bool showDone)
        added,
    required TResult Function(List<Todo> todos, Todo removedItem,
            ActionTool actionTool, bool showDone)
        removed,
    required TResult Function(List<Todo> todos, Todo editedItem,
            ActionTool actionTool, bool showDone)
        edited,
  }) {
    return dataFetched(todos, showDone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todos, bool showDone)? dataFetched,
    TResult Function(List<Todo> todos, Todo addedItem, ActionTool actionTool,
            bool showDone)?
        added,
    TResult Function(List<Todo> todos, Todo removedItem, ActionTool actionTool,
            bool showDone)?
        removed,
    TResult Function(List<Todo> todos, Todo editedItem, ActionTool actionTool,
            bool showDone)?
        edited,
  }) {
    return dataFetched?.call(todos, showDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todos, bool showDone)? dataFetched,
    TResult Function(List<Todo> todos, Todo addedItem, ActionTool actionTool,
            bool showDone)?
        added,
    TResult Function(List<Todo> todos, Todo removedItem, ActionTool actionTool,
            bool showDone)?
        removed,
    TResult Function(List<Todo> todos, Todo editedItem, ActionTool actionTool,
            bool showDone)?
        edited,
    required TResult orElse(),
  }) {
    if (dataFetched != null) {
      return dataFetched(todos, showDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataFetched value) dataFetched,
    required TResult Function(_Added value) added,
    required TResult Function(_Removed value) removed,
    required TResult Function(_Edited value) edited,
  }) {
    return dataFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataFetched value)? dataFetched,
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
  }) {
    return dataFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataFetched value)? dataFetched,
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (dataFetched != null) {
      return dataFetched(this);
    }
    return orElse();
  }
}

abstract class _DataFetched implements TodosState {
  const factory _DataFetched(
      {required final List<Todo> todos, final bool showDone}) = _$_DataFetched;

  List<Todo> get todos;
  bool get showDone;
  @JsonKey(ignore: true)
  _$$_DataFetchedCopyWith<_$_DataFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddedCopyWith<$Res> {
  factory _$$_AddedCopyWith(_$_Added value, $Res Function(_$_Added) then) =
      __$$_AddedCopyWithImpl<$Res>;
  $Res call(
      {List<Todo> todos, Todo addedItem, ActionTool actionTool, bool showDone});

  $TodoCopyWith<$Res> get addedItem;
}

/// @nodoc
class __$$_AddedCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements _$$_AddedCopyWith<$Res> {
  __$$_AddedCopyWithImpl(_$_Added _value, $Res Function(_$_Added) _then)
      : super(_value, (v) => _then(v as _$_Added));

  @override
  _$_Added get _value => super._value as _$_Added;

  @override
  $Res call({
    Object? todos = freezed,
    Object? addedItem = freezed,
    Object? actionTool = freezed,
    Object? showDone = freezed,
  }) {
    return _then(_$_Added(
      todos: todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      addedItem: addedItem == freezed
          ? _value.addedItem
          : addedItem // ignore: cast_nullable_to_non_nullable
              as Todo,
      actionTool: actionTool == freezed
          ? _value.actionTool
          : actionTool // ignore: cast_nullable_to_non_nullable
              as ActionTool,
      showDone: showDone == freezed
          ? _value.showDone
          : showDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $TodoCopyWith<$Res> get addedItem {
    return $TodoCopyWith<$Res>(_value.addedItem, (value) {
      return _then(_value.copyWith(addedItem: value));
    });
  }
}

/// @nodoc

class _$_Added implements _Added {
  const _$_Added(
      {required final List<Todo> todos,
      required this.addedItem,
      required this.actionTool,
      this.showDone = false})
      : _todos = todos;

  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final Todo addedItem;
  @override
  final ActionTool actionTool;
  @override
  @JsonKey()
  final bool showDone;

  @override
  String toString() {
    return 'TodosState.added(todos: $todos, addedItem: $addedItem, actionTool: $actionTool, showDone: $showDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Added &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality().equals(other.addedItem, addedItem) &&
            const DeepCollectionEquality()
                .equals(other.actionTool, actionTool) &&
            const DeepCollectionEquality().equals(other.showDone, showDone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(addedItem),
      const DeepCollectionEquality().hash(actionTool),
      const DeepCollectionEquality().hash(showDone));

  @JsonKey(ignore: true)
  @override
  _$$_AddedCopyWith<_$_Added> get copyWith =>
      __$$_AddedCopyWithImpl<_$_Added>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Todo> todos, bool showDone) dataFetched,
    required TResult Function(List<Todo> todos, Todo addedItem,
            ActionTool actionTool, bool showDone)
        added,
    required TResult Function(List<Todo> todos, Todo removedItem,
            ActionTool actionTool, bool showDone)
        removed,
    required TResult Function(List<Todo> todos, Todo editedItem,
            ActionTool actionTool, bool showDone)
        edited,
  }) {
    return added(todos, addedItem, actionTool, showDone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todos, bool showDone)? dataFetched,
    TResult Function(List<Todo> todos, Todo addedItem, ActionTool actionTool,
            bool showDone)?
        added,
    TResult Function(List<Todo> todos, Todo removedItem, ActionTool actionTool,
            bool showDone)?
        removed,
    TResult Function(List<Todo> todos, Todo editedItem, ActionTool actionTool,
            bool showDone)?
        edited,
  }) {
    return added?.call(todos, addedItem, actionTool, showDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todos, bool showDone)? dataFetched,
    TResult Function(List<Todo> todos, Todo addedItem, ActionTool actionTool,
            bool showDone)?
        added,
    TResult Function(List<Todo> todos, Todo removedItem, ActionTool actionTool,
            bool showDone)?
        removed,
    TResult Function(List<Todo> todos, Todo editedItem, ActionTool actionTool,
            bool showDone)?
        edited,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(todos, addedItem, actionTool, showDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataFetched value) dataFetched,
    required TResult Function(_Added value) added,
    required TResult Function(_Removed value) removed,
    required TResult Function(_Edited value) edited,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataFetched value)? dataFetched,
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataFetched value)? dataFetched,
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _Added implements TodosState {
  const factory _Added(
      {required final List<Todo> todos,
      required final Todo addedItem,
      required final ActionTool actionTool,
      final bool showDone}) = _$_Added;

  List<Todo> get todos;
  Todo get addedItem;
  ActionTool get actionTool;
  bool get showDone;
  @JsonKey(ignore: true)
  _$$_AddedCopyWith<_$_Added> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemovedCopyWith<$Res> {
  factory _$$_RemovedCopyWith(
          _$_Removed value, $Res Function(_$_Removed) then) =
      __$$_RemovedCopyWithImpl<$Res>;
  $Res call(
      {List<Todo> todos,
      Todo removedItem,
      ActionTool actionTool,
      bool showDone});

  $TodoCopyWith<$Res> get removedItem;
}

/// @nodoc
class __$$_RemovedCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements _$$_RemovedCopyWith<$Res> {
  __$$_RemovedCopyWithImpl(_$_Removed _value, $Res Function(_$_Removed) _then)
      : super(_value, (v) => _then(v as _$_Removed));

  @override
  _$_Removed get _value => super._value as _$_Removed;

  @override
  $Res call({
    Object? todos = freezed,
    Object? removedItem = freezed,
    Object? actionTool = freezed,
    Object? showDone = freezed,
  }) {
    return _then(_$_Removed(
      todos: todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      removedItem: removedItem == freezed
          ? _value.removedItem
          : removedItem // ignore: cast_nullable_to_non_nullable
              as Todo,
      actionTool: actionTool == freezed
          ? _value.actionTool
          : actionTool // ignore: cast_nullable_to_non_nullable
              as ActionTool,
      showDone: showDone == freezed
          ? _value.showDone
          : showDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $TodoCopyWith<$Res> get removedItem {
    return $TodoCopyWith<$Res>(_value.removedItem, (value) {
      return _then(_value.copyWith(removedItem: value));
    });
  }
}

/// @nodoc

class _$_Removed implements _Removed {
  const _$_Removed(
      {required final List<Todo> todos,
      required this.removedItem,
      required this.actionTool,
      this.showDone = false})
      : _todos = todos;

  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final Todo removedItem;
  @override
  final ActionTool actionTool;
  @override
  @JsonKey()
  final bool showDone;

  @override
  String toString() {
    return 'TodosState.removed(todos: $todos, removedItem: $removedItem, actionTool: $actionTool, showDone: $showDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Removed &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality()
                .equals(other.removedItem, removedItem) &&
            const DeepCollectionEquality()
                .equals(other.actionTool, actionTool) &&
            const DeepCollectionEquality().equals(other.showDone, showDone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(removedItem),
      const DeepCollectionEquality().hash(actionTool),
      const DeepCollectionEquality().hash(showDone));

  @JsonKey(ignore: true)
  @override
  _$$_RemovedCopyWith<_$_Removed> get copyWith =>
      __$$_RemovedCopyWithImpl<_$_Removed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Todo> todos, bool showDone) dataFetched,
    required TResult Function(List<Todo> todos, Todo addedItem,
            ActionTool actionTool, bool showDone)
        added,
    required TResult Function(List<Todo> todos, Todo removedItem,
            ActionTool actionTool, bool showDone)
        removed,
    required TResult Function(List<Todo> todos, Todo editedItem,
            ActionTool actionTool, bool showDone)
        edited,
  }) {
    return removed(todos, removedItem, actionTool, showDone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todos, bool showDone)? dataFetched,
    TResult Function(List<Todo> todos, Todo addedItem, ActionTool actionTool,
            bool showDone)?
        added,
    TResult Function(List<Todo> todos, Todo removedItem, ActionTool actionTool,
            bool showDone)?
        removed,
    TResult Function(List<Todo> todos, Todo editedItem, ActionTool actionTool,
            bool showDone)?
        edited,
  }) {
    return removed?.call(todos, removedItem, actionTool, showDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todos, bool showDone)? dataFetched,
    TResult Function(List<Todo> todos, Todo addedItem, ActionTool actionTool,
            bool showDone)?
        added,
    TResult Function(List<Todo> todos, Todo removedItem, ActionTool actionTool,
            bool showDone)?
        removed,
    TResult Function(List<Todo> todos, Todo editedItem, ActionTool actionTool,
            bool showDone)?
        edited,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed(todos, removedItem, actionTool, showDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataFetched value) dataFetched,
    required TResult Function(_Added value) added,
    required TResult Function(_Removed value) removed,
    required TResult Function(_Edited value) edited,
  }) {
    return removed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataFetched value)? dataFetched,
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
  }) {
    return removed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataFetched value)? dataFetched,
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed(this);
    }
    return orElse();
  }
}

abstract class _Removed implements TodosState {
  const factory _Removed(
      {required final List<Todo> todos,
      required final Todo removedItem,
      required final ActionTool actionTool,
      final bool showDone}) = _$_Removed;

  List<Todo> get todos;
  Todo get removedItem;
  ActionTool get actionTool;
  bool get showDone;
  @JsonKey(ignore: true)
  _$$_RemovedCopyWith<_$_Removed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditedCopyWith<$Res> {
  factory _$$_EditedCopyWith(_$_Edited value, $Res Function(_$_Edited) then) =
      __$$_EditedCopyWithImpl<$Res>;
  $Res call(
      {List<Todo> todos,
      Todo editedItem,
      ActionTool actionTool,
      bool showDone});

  $TodoCopyWith<$Res> get editedItem;
}

/// @nodoc
class __$$_EditedCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements _$$_EditedCopyWith<$Res> {
  __$$_EditedCopyWithImpl(_$_Edited _value, $Res Function(_$_Edited) _then)
      : super(_value, (v) => _then(v as _$_Edited));

  @override
  _$_Edited get _value => super._value as _$_Edited;

  @override
  $Res call({
    Object? todos = freezed,
    Object? editedItem = freezed,
    Object? actionTool = freezed,
    Object? showDone = freezed,
  }) {
    return _then(_$_Edited(
      todos: todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      editedItem: editedItem == freezed
          ? _value.editedItem
          : editedItem // ignore: cast_nullable_to_non_nullable
              as Todo,
      actionTool: actionTool == freezed
          ? _value.actionTool
          : actionTool // ignore: cast_nullable_to_non_nullable
              as ActionTool,
      showDone: showDone == freezed
          ? _value.showDone
          : showDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $TodoCopyWith<$Res> get editedItem {
    return $TodoCopyWith<$Res>(_value.editedItem, (value) {
      return _then(_value.copyWith(editedItem: value));
    });
  }
}

/// @nodoc

class _$_Edited implements _Edited {
  const _$_Edited(
      {required final List<Todo> todos,
      required this.editedItem,
      required this.actionTool,
      this.showDone = false})
      : _todos = todos;

  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final Todo editedItem;
  @override
  final ActionTool actionTool;
  @override
  @JsonKey()
  final bool showDone;

  @override
  String toString() {
    return 'TodosState.edited(todos: $todos, editedItem: $editedItem, actionTool: $actionTool, showDone: $showDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Edited &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality()
                .equals(other.editedItem, editedItem) &&
            const DeepCollectionEquality()
                .equals(other.actionTool, actionTool) &&
            const DeepCollectionEquality().equals(other.showDone, showDone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(editedItem),
      const DeepCollectionEquality().hash(actionTool),
      const DeepCollectionEquality().hash(showDone));

  @JsonKey(ignore: true)
  @override
  _$$_EditedCopyWith<_$_Edited> get copyWith =>
      __$$_EditedCopyWithImpl<_$_Edited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Todo> todos, bool showDone) dataFetched,
    required TResult Function(List<Todo> todos, Todo addedItem,
            ActionTool actionTool, bool showDone)
        added,
    required TResult Function(List<Todo> todos, Todo removedItem,
            ActionTool actionTool, bool showDone)
        removed,
    required TResult Function(List<Todo> todos, Todo editedItem,
            ActionTool actionTool, bool showDone)
        edited,
  }) {
    return edited(todos, editedItem, actionTool, showDone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todos, bool showDone)? dataFetched,
    TResult Function(List<Todo> todos, Todo addedItem, ActionTool actionTool,
            bool showDone)?
        added,
    TResult Function(List<Todo> todos, Todo removedItem, ActionTool actionTool,
            bool showDone)?
        removed,
    TResult Function(List<Todo> todos, Todo editedItem, ActionTool actionTool,
            bool showDone)?
        edited,
  }) {
    return edited?.call(todos, editedItem, actionTool, showDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Todo> todos, bool showDone)? dataFetched,
    TResult Function(List<Todo> todos, Todo addedItem, ActionTool actionTool,
            bool showDone)?
        added,
    TResult Function(List<Todo> todos, Todo removedItem, ActionTool actionTool,
            bool showDone)?
        removed,
    TResult Function(List<Todo> todos, Todo editedItem, ActionTool actionTool,
            bool showDone)?
        edited,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(todos, editedItem, actionTool, showDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataFetched value) dataFetched,
    required TResult Function(_Added value) added,
    required TResult Function(_Removed value) removed,
    required TResult Function(_Edited value) edited,
  }) {
    return edited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataFetched value)? dataFetched,
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
  }) {
    return edited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataFetched value)? dataFetched,
    TResult Function(_Added value)? added,
    TResult Function(_Removed value)? removed,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class _Edited implements TodosState {
  const factory _Edited(
      {required final List<Todo> todos,
      required final Todo editedItem,
      required final ActionTool actionTool,
      final bool showDone}) = _$_Edited;

  List<Todo> get todos;
  Todo get editedItem;
  ActionTool get actionTool;
  bool get showDone;
  @JsonKey(ignore: true)
  _$$_EditedCopyWith<_$_Edited> get copyWith =>
      throw _privateConstructorUsedError;
}
