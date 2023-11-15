// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetDetailsData _$PetDetailsDataFromJson(Map<String, dynamic> json) {
  return _PetDetailsData.fromJson(json);
}

/// @nodoc
mixin _$PetDetailsData {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get breed => throw _privateConstructorUsedError;
  String get birthday => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;
  int get chip => throw _privateConstructorUsedError;
  int get registration => throw _privateConstructorUsedError;
  String get residence => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetDetailsDataCopyWith<PetDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetDetailsDataCopyWith<$Res> {
  factory $PetDetailsDataCopyWith(
          PetDetailsData value, $Res Function(PetDetailsData) then) =
      _$PetDetailsDataCopyWithImpl<$Res, PetDetailsData>;
  @useResult
  $Res call(
      {String id,
      String name,
      String breed,
      String birthday,
      int age,
      String weight,
      int chip,
      int registration,
      String residence});
}

/// @nodoc
class _$PetDetailsDataCopyWithImpl<$Res, $Val extends PetDetailsData>
    implements $PetDetailsDataCopyWith<$Res> {
  _$PetDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? breed = null,
    Object? birthday = null,
    Object? age = null,
    Object? weight = null,
    Object? chip = null,
    Object? registration = null,
    Object? residence = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breed: null == breed
          ? _value.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      chip: null == chip
          ? _value.chip
          : chip // ignore: cast_nullable_to_non_nullable
              as int,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as int,
      residence: null == residence
          ? _value.residence
          : residence // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PetDetailsDataImplCopyWith<$Res>
    implements $PetDetailsDataCopyWith<$Res> {
  factory _$$PetDetailsDataImplCopyWith(_$PetDetailsDataImpl value,
          $Res Function(_$PetDetailsDataImpl) then) =
      __$$PetDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String breed,
      String birthday,
      int age,
      String weight,
      int chip,
      int registration,
      String residence});
}

/// @nodoc
class __$$PetDetailsDataImplCopyWithImpl<$Res>
    extends _$PetDetailsDataCopyWithImpl<$Res, _$PetDetailsDataImpl>
    implements _$$PetDetailsDataImplCopyWith<$Res> {
  __$$PetDetailsDataImplCopyWithImpl(
      _$PetDetailsDataImpl _value, $Res Function(_$PetDetailsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? breed = null,
    Object? birthday = null,
    Object? age = null,
    Object? weight = null,
    Object? chip = null,
    Object? registration = null,
    Object? residence = null,
  }) {
    return _then(_$PetDetailsDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breed: null == breed
          ? _value.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      chip: null == chip
          ? _value.chip
          : chip // ignore: cast_nullable_to_non_nullable
              as int,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as int,
      residence: null == residence
          ? _value.residence
          : residence // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetDetailsDataImpl implements _PetDetailsData {
  _$PetDetailsDataImpl(
      {required this.id,
      required this.name,
      required this.breed,
      required this.birthday,
      required this.age,
      required this.weight,
      required this.chip,
      required this.registration,
      required this.residence});

  factory _$PetDetailsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetDetailsDataImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String breed;
  @override
  final String birthday;
  @override
  final int age;
  @override
  final String weight;
  @override
  final int chip;
  @override
  final int registration;
  @override
  final String residence;

  @override
  String toString() {
    return 'PetDetailsData(id: $id, name: $name, breed: $breed, birthday: $birthday, age: $age, weight: $weight, chip: $chip, registration: $registration, residence: $residence)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetDetailsDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.breed, breed) || other.breed == breed) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.chip, chip) || other.chip == chip) &&
            (identical(other.registration, registration) ||
                other.registration == registration) &&
            (identical(other.residence, residence) ||
                other.residence == residence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, breed, birthday, age,
      weight, chip, registration, residence);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetDetailsDataImplCopyWith<_$PetDetailsDataImpl> get copyWith =>
      __$$PetDetailsDataImplCopyWithImpl<_$PetDetailsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _PetDetailsData implements PetDetailsData {
  factory _PetDetailsData(
      {required final String id,
      required final String name,
      required final String breed,
      required final String birthday,
      required final int age,
      required final String weight,
      required final int chip,
      required final int registration,
      required final String residence}) = _$PetDetailsDataImpl;

  factory _PetDetailsData.fromJson(Map<String, dynamic> json) =
      _$PetDetailsDataImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get breed;
  @override
  String get birthday;
  @override
  int get age;
  @override
  String get weight;
  @override
  int get chip;
  @override
  int get registration;
  @override
  String get residence;
  @override
  @JsonKey(ignore: true)
  _$$PetDetailsDataImplCopyWith<_$PetDetailsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
