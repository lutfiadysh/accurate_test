// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModels _$UserModelsFromJson(Map<String, dynamic> json) {
  return _UserModels.fromJson(json);
}

/// @nodoc
mixin _$UserModels {
  List<UserData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelsCopyWith<UserModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelsCopyWith<$Res> {
  factory $UserModelsCopyWith(
          UserModels value, $Res Function(UserModels) then) =
      _$UserModelsCopyWithImpl<$Res, UserModels>;
  @useResult
  $Res call({List<UserData> data});
}

/// @nodoc
class _$UserModelsCopyWithImpl<$Res, $Val extends UserModels>
    implements $UserModelsCopyWith<$Res> {
  _$UserModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelsImplCopyWith<$Res>
    implements $UserModelsCopyWith<$Res> {
  factory _$$UserModelsImplCopyWith(
          _$UserModelsImpl value, $Res Function(_$UserModelsImpl) then) =
      __$$UserModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserData> data});
}

/// @nodoc
class __$$UserModelsImplCopyWithImpl<$Res>
    extends _$UserModelsCopyWithImpl<$Res, _$UserModelsImpl>
    implements _$$UserModelsImplCopyWith<$Res> {
  __$$UserModelsImplCopyWithImpl(
      _$UserModelsImpl _value, $Res Function(_$UserModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UserModelsImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelsImpl implements _UserModels {
  const _$UserModelsImpl({required final List<UserData> data}) : _data = data;

  factory _$UserModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelsImplFromJson(json);

  final List<UserData> _data;
  @override
  List<UserData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'UserModels(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelsImplCopyWith<_$UserModelsImpl> get copyWith =>
      __$$UserModelsImplCopyWithImpl<_$UserModelsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelsImplToJson(
      this,
    );
  }
}

abstract class _UserModels implements UserModels {
  const factory _UserModels({required final List<UserData> data}) =
      _$UserModelsImpl;

  factory _UserModels.fromJson(Map<String, dynamic> json) =
      _$UserModelsImpl.fromJson;

  @override
  List<UserData> get data;
  @override
  @JsonKey(ignore: true)
  _$$UserModelsImplCopyWith<_$UserModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {String name,
      String address,
      String email,
      String phoneNumber,
      String city,
      String id});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? city = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String address,
      String email,
      String phoneNumber,
      String city,
      String id});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? city = null,
    Object? id = null,
  }) {
    return _then(_$UserDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl(
      {required this.name,
      required this.address,
      required this.email,
      required this.phoneNumber,
      required this.city,
      required this.id});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  final String name;
  @override
  final String address;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String city;
  @override
  final String id;

  @override
  String toString() {
    return 'UserData(name: $name, address: $address, email: $email, phoneNumber: $phoneNumber, city: $city, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, address, email, phoneNumber, city, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {required final String name,
      required final String address,
      required final String email,
      required final String phoneNumber,
      required final String city,
      required final String id}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  String get name;
  @override
  String get address;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  String get city;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
