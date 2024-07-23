import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_models.g.dart';
part 'city_models.freezed.dart';

@freezed
class CityModels with _$CityModels {
  const factory CityModels({
    required List<CityData> data,
  }) = _CityModels;

  factory CityModels.fromJson(Map<String, dynamic> json) =>
      _$CityModelsFromJson(json);
}

@freezed
class CityData with _$CityData {
  const factory CityData({
    required String name,
    required String id,
  }) = _CityData;

  factory CityData.fromJson(Map<String, dynamic> json) =>
      _$CityDataFromJson(json);
}
