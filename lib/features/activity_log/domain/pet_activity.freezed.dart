// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetActivity _$PetActivityFromJson(Map<String, dynamic> json) {
  return _PetActivity.fromJson(json);
}

/// @nodoc
mixin _$PetActivity {
  String get id => throw _privateConstructorUsedError;
  String get petId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetActivityCopyWith<PetActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetActivityCopyWith<$Res> {
  factory $PetActivityCopyWith(
          PetActivity value, $Res Function(PetActivity) then) =
      _$PetActivityCopyWithImpl<$Res, PetActivity>;
  @useResult
  $Res call(
      {String id,
      String petId,
      String title,
      String type,
      String content,
      String timestamp,
      String date});
}

/// @nodoc
class _$PetActivityCopyWithImpl<$Res, $Val extends PetActivity>
    implements $PetActivityCopyWith<$Res> {
  _$PetActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? petId = null,
    Object? title = null,
    Object? type = null,
    Object? content = null,
    Object? timestamp = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      petId: null == petId
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PetActivityImplCopyWith<$Res>
    implements $PetActivityCopyWith<$Res> {
  factory _$$PetActivityImplCopyWith(
          _$PetActivityImpl value, $Res Function(_$PetActivityImpl) then) =
      __$$PetActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String petId,
      String title,
      String type,
      String content,
      String timestamp,
      String date});
}

/// @nodoc
class __$$PetActivityImplCopyWithImpl<$Res>
    extends _$PetActivityCopyWithImpl<$Res, _$PetActivityImpl>
    implements _$$PetActivityImplCopyWith<$Res> {
  __$$PetActivityImplCopyWithImpl(
      _$PetActivityImpl _value, $Res Function(_$PetActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? petId = null,
    Object? title = null,
    Object? type = null,
    Object? content = null,
    Object? timestamp = null,
    Object? date = null,
  }) {
    return _then(_$PetActivityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      petId: null == petId
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetActivityImpl extends _PetActivity {
  _$PetActivityImpl(
      {required this.id,
      required this.petId,
      required this.title,
      required this.type,
      required this.content,
      required this.timestamp,
      required this.date})
      : super._();

  factory _$PetActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetActivityImplFromJson(json);

  @override
  final String id;
  @override
  final String petId;
  @override
  final String title;
  @override
  final String type;
  @override
  final String content;
  @override
  final String timestamp;
  @override
  final String date;

  @override
  String toString() {
    return 'PetActivity(id: $id, petId: $petId, title: $title, type: $type, content: $content, timestamp: $timestamp, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetActivityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.petId, petId) || other.petId == petId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, petId, title, type, content, timestamp, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetActivityImplCopyWith<_$PetActivityImpl> get copyWith =>
      __$$PetActivityImplCopyWithImpl<_$PetActivityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetActivityImplToJson(
      this,
    );
  }
}

abstract class _PetActivity extends PetActivity {
  factory _PetActivity(
      {required final String id,
      required final String petId,
      required final String title,
      required final String type,
      required final String content,
      required final String timestamp,
      required final String date}) = _$PetActivityImpl;
  _PetActivity._() : super._();

  factory _PetActivity.fromJson(Map<String, dynamic> json) =
      _$PetActivityImpl.fromJson;

  @override
  String get id;
  @override
  String get petId;
  @override
  String get title;
  @override
  String get type;
  @override
  String get content;
  @override
  String get timestamp;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$PetActivityImplCopyWith<_$PetActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
