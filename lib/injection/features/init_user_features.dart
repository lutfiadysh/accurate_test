import 'package:accurate_lutfi/data/datasources/user_remote_datasource.dart';
import 'package:accurate_lutfi/injection/injection_container.dart';

void initUserFeatures() async {
  gi.registerLazySingleton<UserRemoteDatasource>(
      () => UserRemoteDatasourceImpl());
}
