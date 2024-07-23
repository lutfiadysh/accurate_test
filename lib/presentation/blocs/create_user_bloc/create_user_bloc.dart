import 'package:accurate_lutfi/data/datasources/city_remote_datasource.dart';
import 'package:accurate_lutfi/data/datasources/user_remote_datasource.dart';
import 'package:accurate_lutfi/data/entities/city_models/city_models.dart';
import 'package:accurate_lutfi/data/entities/user_models/user_models.dart';
import 'package:accurate_lutfi/injection/injection_container.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_event.dart';
part 'create_user_state.dart';

class CreateUserBloc extends Bloc<CreateUserEvent, CreateUserState> {
  var cityRemoteDatasource = gi<CityRemoteDatasource>();
  var userRemoteDatasource = gi<UserRemoteDatasource>();
  CreateUserBloc() : super(CreateUserInitial()) {
    on<FetchCreateUserResources>(mapFetchCreateUserResourcesToState);

    on<SubmitUser>(mapSubmitUserToState);
  }

  void mapFetchCreateUserResourcesToState(
      FetchCreateUserResources event, emit) async {
    emit(FetchCreateUserResourcesLoading());
    try {
      final response = await cityRemoteDatasource.fetchCity();
      emit(FetchCreateUserResourcesSuccess(
          city: CityModels.fromJson({'data': response})));
    } catch (e) {
      emit(FetchCreateUserResourcesFailure(message: e.toString()));
    }
  }

  void mapSubmitUserToState(SubmitUser event, emit) async {
    emit(SubmitUserLoading());
    try {
      final response = await userRemoteDatasource.createUser(
          name: event.name,
          address: event.address,
          email: event.email,
          phoneNumber: event.phoneNumber,
          city: event.city);

      print(response);

      emit(SubmitUserSuccess());
    } catch (e) {
      emit(SubmitUserFailure(message: e.toString()));
    }
  }
}
