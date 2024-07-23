part of 'create_user_bloc.dart';

class CreateUserState extends Equatable {
  const CreateUserState();

  @override
  List<Object> get props => [];
}

class CreateUserInitial extends CreateUserState {}

class FetchCreateUserResourcesLoading extends CreateUserState {}

class FetchCreateUserResourcesFailure extends CreateUserState {
  final String message;

  const FetchCreateUserResourcesFailure({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

class FetchCreateUserResourcesSuccess extends CreateUserState {
  final CityModels city;

  const FetchCreateUserResourcesSuccess({
    required this.city,
  });

  @override
  List<Object> get props => [city];
}

class SubmitUserLoading extends CreateUserState {}

class SubmitUserFailure extends CreateUserState {
  final String message;

  const SubmitUserFailure({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

class SubmitUserSuccess extends CreateUserState {}
