// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CityModels _$CityModelsFromJson(Map<String, dynamic> json) {
  return _CityModels.fromJson(json);
}

/// @nodoc
mixin _$CityModels {
  List<CityData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityModelsCopyWith<CityModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityModelsCopyWith<$Res> {
  factory $CityModelsCopyWith(
          CityModels value, $Res Function(CityModels) then) =
      _$CityModelsCopyWithImpl<$Res, CityModels>;
  @useResult
  $Res call({List<CityData> data});
}

/// @nodoc
class _$CityModelsCopyWithImpl<$Res, $Val extends CityModels>
    implements $CityModelsCopyWith<$Res> {
  _$CityModelsCopyWithImpl(this._value, this._then);

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
              as List<CityData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityModelsImplCopyWith<$Res>
    implements $CityModelsCopyWith<$Res> {
  factory _$$CityModelsImplCopyWith(
          _$CityModelsImpl value, $Res Function(_$CityModelsImpl) then) =
      __$$CityModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CityData> data});
}

/// @nodoc
class __$$CityModelsImplCopyWithImpl<$Res>
    extends _$CityModelsCopyWithImpl<$Res, _$CityModelsImpl>
    implements _$$CityModelsImplCopyWith<$Res> {
  __$$CityModelsImplCopyWithImpl(
      _$CityModelsImpl _value, $Res Function(_$CityModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CityModelsImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CityData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityModelsImpl implements _CityModels {
  const _$CityModelsImpl({required final List<CityData> data}) : _data = data;

  factory _$CityModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityModelsImplFromJson(json);

  final List<CityData> _data;
  @override
  List<CityData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CityModels(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityModelsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityModelsImplCopyWith<_$CityModelsImpl> get copyWith =>
      __$$CityModelsImplCopyWithImpl<_$CityModelsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityModelsImplToJson(
      this,
    );
  }
}

abstract class _CityModels implements CityModels {
  const factory _CityModels({required final List<CityData> data}) =
      _$CityModelsImpl;

  factory _CityModels.fromJson(Map<String, dynamic> json) =
      _$CityModelsImpl.fromJson;

  @override
  List<CityData> get data;
  @override
  @JsonKey(ignore: true)
  _$$CityModelsImplCopyWith<_$CityModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CityData _$CityDataFromJson(Map<String, dynamic> json) {
  return _CityData.fromJson(json);
}

/// @nodoc
mixin _$CityData {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityDataCopyWith<CityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDataCopyWith<$Res> {
  factory $CityDataCopyWith(CityData value, $Res Function(CityData) then) =
      _$CityDataCopyWithImpl<$Res, CityData>;
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class _$CityDataCopyWithImpl<$Res, $Val extends CityData>
    implements $CityDataCopyWith<$Res> {
  _$CityDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityDataImplCopyWith<$Res>
    implements $CityDataCopyWith<$Res> {
  factory _$$CityDataImplCopyWith(
          _$CityDataImpl value, $Res Function(_$CityDataImpl) then) =
      __$$CityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class __$$CityDataImplCopyWithImpl<$Res>
    extends _$CityDataCopyWithImpl<$Res, _$CityDataImpl>
    implements _$$CityDataImplCopyWith<$Res> {
  __$$CityDataImplCopyWithImpl(
      _$CityDataImpl _value, $Res Function(_$CityDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$CityDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$CityDataImpl implements _CityData {
  const _$CityDataImpl({required this.name, required this.id});

  factory _$CityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityDataImplFromJson(json);

  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'CityData(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityDataImplCopyWith<_$CityDataImpl> get copyWith =>
      __$$CityDataImplCopyWithImpl<_$CityDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityDataImplToJson(
      this,
    );
  }
}

abstract class _CityData implements CityData {
  const factory _CityData(
      {required final String name, required final String id}) = _$CityDataImpl;

  factory _CityData.fromJson(Map<String, dynamic> json) =
      _$CityDataImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$CityDataImplCopyWith<_$CityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
