// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetFoodData _$PetFoodDataFromJson(Map<String, dynamic> json) {
  return _PetFoodData.fromJson(json);
}

/// @nodoc
mixin _$PetFoodData {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  List<String> get pros => throw _privateConstructorUsedError;
  List<String> get cons => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetFoodDataCopyWith<PetFoodData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetFoodDataCopyWith<$Res> {
  factory $PetFoodDataCopyWith(
          PetFoodData value, $Res Function(PetFoodData) then) =
      _$PetFoodDataCopyWithImpl<$Res, PetFoodData>;
  @useResult
  $Res call(
      {String id,
      String name,
      double price,
      String brand,
      List<String> pros,
      List<String> cons,
      String imagePath});
}

/// @nodoc
class _$PetFoodDataCopyWithImpl<$Res, $Val extends PetFoodData>
    implements $PetFoodDataCopyWith<$Res> {
  _$PetFoodDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? brand = null,
    Object? pros = null,
    Object? cons = null,
    Object? imagePath = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      pros: null == pros
          ? _value.pros
          : pros // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cons: null == cons
          ? _value.cons
          : cons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PetFoodDataImplCopyWith<$Res>
    implements $PetFoodDataCopyWith<$Res> {
  factory _$$PetFoodDataImplCopyWith(
          _$PetFoodDataImpl value, $Res Function(_$PetFoodDataImpl) then) =
      __$$PetFoodDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      double price,
      String brand,
      List<String> pros,
      List<String> cons,
      String imagePath});
}

/// @nodoc
class __$$PetFoodDataImplCopyWithImpl<$Res>
    extends _$PetFoodDataCopyWithImpl<$Res, _$PetFoodDataImpl>
    implements _$$PetFoodDataImplCopyWith<$Res> {
  __$$PetFoodDataImplCopyWithImpl(
      _$PetFoodDataImpl _value, $Res Function(_$PetFoodDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? brand = null,
    Object? pros = null,
    Object? cons = null,
    Object? imagePath = null,
  }) {
    return _then(_$PetFoodDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      pros: null == pros
          ? _value._pros
          : pros // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cons: null == cons
          ? _value._cons
          : cons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetFoodDataImpl implements _PetFoodData {
  _$PetFoodDataImpl(
      {required this.id,
      required this.name,
      required this.price,
      required this.brand,
      required final List<String> pros,
      required final List<String> cons,
      this.imagePath = 'assets/images/pedigree.jpg'})
      : _pros = pros,
        _cons = cons;

  factory _$PetFoodDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetFoodDataImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double price;
  @override
  final String brand;
  final List<String> _pros;
  @override
  List<String> get pros {
    if (_pros is EqualUnmodifiableListView) return _pros;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pros);
  }

  final List<String> _cons;
  @override
  List<String> get cons {
    if (_cons is EqualUnmodifiableListView) return _cons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cons);
  }

  @override
  @JsonKey()
  final String imagePath;

  @override
  String toString() {
    return 'PetFoodData(id: $id, name: $name, price: $price, brand: $brand, pros: $pros, cons: $cons, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetFoodDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            const DeepCollectionEquality().equals(other._pros, _pros) &&
            const DeepCollectionEquality().equals(other._cons, _cons) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      brand,
      const DeepCollectionEquality().hash(_pros),
      const DeepCollectionEquality().hash(_cons),
      imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetFoodDataImplCopyWith<_$PetFoodDataImpl> get copyWith =>
      __$$PetFoodDataImplCopyWithImpl<_$PetFoodDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetFoodDataImplToJson(
      this,
    );
  }
}

abstract class _PetFoodData implements PetFoodData {
  factory _PetFoodData(
      {required final String id,
      required final String name,
      required final double price,
      required final String brand,
      required final List<String> pros,
      required final List<String> cons,
      final String imagePath}) = _$PetFoodDataImpl;

  factory _PetFoodData.fromJson(Map<String, dynamic> json) =
      _$PetFoodDataImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double get price;
  @override
  String get brand;
  @override
  List<String> get pros;
  @override
  List<String> get cons;
  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$PetFoodDataImplCopyWith<_$PetFoodDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
