import 'package:accurate_lutfi/injection/features/init_city_features.dart';
import 'package:accurate_lutfi/injection/features/init_user_features.dart';
import 'package:get_it/get_it.dart';

final gi = GetIt.instance;

Future<void> init() async {
  initCityFeatures();
  initUserFeatures();
}
