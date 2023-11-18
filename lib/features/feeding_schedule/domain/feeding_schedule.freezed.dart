// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feeding_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedingScheduleData _$FeedingScheduleDataFromJson(Map<String, dynamic> json) {
  return _FeedingScheduleData.fromJson(json);
}

/// @nodoc
mixin _$FeedingScheduleData {
  String get id => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  List<DailyFeedingScheduleData> get schedules =>
      throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedingScheduleDataCopyWith<FeedingScheduleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedingScheduleDataCopyWith<$Res> {
  factory $FeedingScheduleDataCopyWith(
          FeedingScheduleData value, $Res Function(FeedingScheduleData) then) =
      _$FeedingScheduleDataCopyWithImpl<$Res, FeedingScheduleData>;
  @useResult
  $Res call(
      {String id,
      String day,
      List<DailyFeedingScheduleData> schedules,
      bool isExpanded});
}

/// @nodoc
class _$FeedingScheduleDataCopyWithImpl<$Res, $Val extends FeedingScheduleData>
    implements $FeedingScheduleDataCopyWith<$Res> {
  _$FeedingScheduleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? schedules = null,
    Object? isExpanded = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      schedules: null == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<DailyFeedingScheduleData>,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedingScheduleDataImplCopyWith<$Res>
    implements $FeedingScheduleDataCopyWith<$Res> {
  factory _$$FeedingScheduleDataImplCopyWith(_$FeedingScheduleDataImpl value,
          $Res Function(_$FeedingScheduleDataImpl) then) =
      __$$FeedingScheduleDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String day,
      List<DailyFeedingScheduleData> schedules,
      bool isExpanded});
}

/// @nodoc
class __$$FeedingScheduleDataImplCopyWithImpl<$Res>
    extends _$FeedingScheduleDataCopyWithImpl<$Res, _$FeedingScheduleDataImpl>
    implements _$$FeedingScheduleDataImplCopyWith<$Res> {
  __$$FeedingScheduleDataImplCopyWithImpl(_$FeedingScheduleDataImpl _value,
      $Res Function(_$FeedingScheduleDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? schedules = null,
    Object? isExpanded = null,
  }) {
    return _then(_$FeedingScheduleDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      schedules: null == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<DailyFeedingScheduleData>,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedingScheduleDataImpl extends _FeedingScheduleData {
  _$FeedingScheduleDataImpl(
      {required this.id,
      required this.day,
      required final List<DailyFeedingScheduleData> schedules,
      this.isExpanded = false})
      : _schedules = schedules,
        super._();

  factory _$FeedingScheduleDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedingScheduleDataImplFromJson(json);

  @override
  final String id;
  @override
  final String day;
  final List<DailyFeedingScheduleData> _schedules;
  @override
  List<DailyFeedingScheduleData> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  @override
  @JsonKey()
  final bool isExpanded;

  @override
  String toString() {
    return 'FeedingScheduleData(id: $id, day: $day, schedules: $schedules, isExpanded: $isExpanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedingScheduleDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules) &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, day,
      const DeepCollectionEquality().hash(_schedules), isExpanded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedingScheduleDataImplCopyWith<_$FeedingScheduleDataImpl> get copyWith =>
      __$$FeedingScheduleDataImplCopyWithImpl<_$FeedingScheduleDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedingScheduleDataImplToJson(
      this,
    );
  }
}

abstract class _FeedingScheduleData extends FeedingScheduleData {
  factory _FeedingScheduleData(
      {required final String id,
      required final String day,
      required final List<DailyFeedingScheduleData> schedules,
      final bool isExpanded}) = _$FeedingScheduleDataImpl;
  _FeedingScheduleData._() : super._();

  factory _FeedingScheduleData.fromJson(Map<String, dynamic> json) =
      _$FeedingScheduleDataImpl.fromJson;

  @override
  String get id;
  @override
  String get day;
  @override
  List<DailyFeedingScheduleData> get schedules;
  @override
  bool get isExpanded;
  @override
  @JsonKey(ignore: true)
  _$$FeedingScheduleDataImplCopyWith<_$FeedingScheduleDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyFeedingScheduleData _$DailyFeedingScheduleDataFromJson(
    Map<String, dynamic> json) {
  return _DailyFeedingScheduleData.fromJson(json);
}

/// @nodoc
mixin _$DailyFeedingScheduleData {
  String get name => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get foodType => throw _privateConstructorUsedError;
  String? get quantity => throw _privateConstructorUsedError;
  bool get complete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyFeedingScheduleDataCopyWith<DailyFeedingScheduleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyFeedingScheduleDataCopyWith<$Res> {
  factory $DailyFeedingScheduleDataCopyWith(DailyFeedingScheduleData value,
          $Res Function(DailyFeedingScheduleData) then) =
      _$DailyFeedingScheduleDataCopyWithImpl<$Res, DailyFeedingScheduleData>;
  @useResult
  $Res call(
      {String name,
      String? time,
      String? foodType,
      String? quantity,
      bool complete});
}

/// @nodoc
class _$DailyFeedingScheduleDataCopyWithImpl<$Res,
        $Val extends DailyFeedingScheduleData>
    implements $DailyFeedingScheduleDataCopyWith<$Res> {
  _$DailyFeedingScheduleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? time = freezed,
    Object? foodType = freezed,
    Object? quantity = freezed,
    Object? complete = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      foodType: freezed == foodType
          ? _value.foodType
          : foodType // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyFeedingScheduleDataImplCopyWith<$Res>
    implements $DailyFeedingScheduleDataCopyWith<$Res> {
  factory _$$DailyFeedingScheduleDataImplCopyWith(
          _$DailyFeedingScheduleDataImpl value,
          $Res Function(_$DailyFeedingScheduleDataImpl) then) =
      __$$DailyFeedingScheduleDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? time,
      String? foodType,
      String? quantity,
      bool complete});
}

/// @nodoc
class __$$DailyFeedingScheduleDataImplCopyWithImpl<$Res>
    extends _$DailyFeedingScheduleDataCopyWithImpl<$Res,
        _$DailyFeedingScheduleDataImpl>
    implements _$$DailyFeedingScheduleDataImplCopyWith<$Res> {
  __$$DailyFeedingScheduleDataImplCopyWithImpl(
      _$DailyFeedingScheduleDataImpl _value,
      $Res Function(_$DailyFeedingScheduleDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? time = freezed,
    Object? foodType = freezed,
    Object? quantity = freezed,
    Object? complete = null,
  }) {
    return _then(_$DailyFeedingScheduleDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      foodType: freezed == foodType
          ? _value.foodType
          : foodType // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyFeedingScheduleDataImpl implements _DailyFeedingScheduleData {
  _$DailyFeedingScheduleDataImpl(
      {required this.name,
      this.time,
      this.foodType,
      this.quantity,
      this.complete = false});

  factory _$DailyFeedingScheduleDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyFeedingScheduleDataImplFromJson(json);

  @override
  final String name;
  @override
  final String? time;
  @override
  final String? foodType;
  @override
  final String? quantity;
  @override
  @JsonKey()
  final bool complete;

  @override
  String toString() {
    return 'DailyFeedingScheduleData(name: $name, time: $time, foodType: $foodType, quantity: $quantity, complete: $complete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyFeedingScheduleDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.foodType, foodType) ||
                other.foodType == foodType) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.complete, complete) ||
                other.complete == complete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, time, foodType, quantity, complete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyFeedingScheduleDataImplCopyWith<_$DailyFeedingScheduleDataImpl>
      get copyWith => __$$DailyFeedingScheduleDataImplCopyWithImpl<
          _$DailyFeedingScheduleDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyFeedingScheduleDataImplToJson(
      this,
    );
  }
}

abstract class _DailyFeedingScheduleData implements DailyFeedingScheduleData {
  factory _DailyFeedingScheduleData(
      {required final String name,
      final String? time,
      final String? foodType,
      final String? quantity,
      final bool complete}) = _$DailyFeedingScheduleDataImpl;

  factory _DailyFeedingScheduleData.fromJson(Map<String, dynamic> json) =
      _$DailyFeedingScheduleDataImpl.fromJson;

  @override
  String get name;
  @override
  String? get time;
  @override
  String? get foodType;
  @override
  String? get quantity;
  @override
  bool get complete;
  @override
  @JsonKey(ignore: true)
  _$$DailyFeedingScheduleDataImplCopyWith<_$DailyFeedingScheduleDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
