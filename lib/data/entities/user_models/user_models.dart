import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_models.g.dart';
part 'user_models.freezed.dart';

@freezed
class UserModels with _$UserModels {
  const factory UserModels({
    required List<UserData> data,
  }) = _UserModels;

  factory UserModels.fromJson(Map<String, dynamic> json) =>
      _$UserModelsFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String name,
    required String address,
    required String email,
    required String phoneNumber,
    required String city,
    required String id,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
