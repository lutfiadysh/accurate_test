import 'package:accurate_lutfi/data/datasources/city_remote_datasource.dart';
import 'package:accurate_lutfi/data/datasources/user_remote_datasource.dart';
import 'package:accurate_lutfi/data/entities/city_models/city_models.dart';
import 'package:accurate_lutfi/data/entities/user_models/user_models.dart';
import 'package:accurate_lutfi/injection/injection_container.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final userRemoteDatasource = gi<UserRemoteDatasource>();
  final cityRemoteDatasource = gi<CityRemoteDatasource>();
  UserBloc() : super(UserInitial()) {
    on<FetchUserResources>(mapFetchUserResourcesToState);
  }

  void mapFetchUserResourcesToState(FetchUserResources event, emit) async {
    emit(FetchUserResourcesLoading());
    try {
      final response = await userRemoteDatasource.fetchUser();
      final cityRes = await cityRemoteDatasource.fetchCity();

      emit(FetchUserResourcesSuccess(
        users: UserModels.fromJson({'data': response}),
        city: CityModels.fromJson({'data': cityRes}),
      ));
    } catch (e) {
      emit(FetchUserResourcesFailure(message: e.toString()));
    }
  }
}
