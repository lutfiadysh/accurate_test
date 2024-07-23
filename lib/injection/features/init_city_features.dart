import 'package:accurate_lutfi/data/datasources/city_remote_datasource.dart';
import 'package:accurate_lutfi/injection/injection_container.dart';

void initCityFeatures() {
  gi.registerLazySingleton<CityRemoteDatasource>(
      () => CityRemoteDatasourceImpl());
}
