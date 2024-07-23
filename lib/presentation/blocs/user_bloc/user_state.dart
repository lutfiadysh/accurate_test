part of 'user_bloc.dart';

class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class FetchUserResourcesLoading extends UserState {}

class FetchUserResourcesFailure extends UserState {
  final String message;

  const FetchUserResourcesFailure({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

class FetchUserResourcesSuccess extends UserState {
  final UserModels users;
  final CityModels city;

  const FetchUserResourcesSuccess({
    required this.users,
    required this.city,
  });

  @override
  List<Object> get props => [users];
}
