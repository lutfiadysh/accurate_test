part of 'create_user_bloc.dart';

class CreateUserEvent extends Equatable {
  const CreateUserEvent();

  @override
  List<Object> get props => [];
}

class FetchCreateUserResources extends CreateUserEvent {}

class SubmitUser extends CreateUserEvent {
  final String name;
  final String email;
  final String phoneNumber;
  final String address;
  final String city;

  const SubmitUser({
    required this.address,
    required this.city,
    required this.email,
    required this.name,
    required this.phoneNumber,
  });

  @override
  List<Object> get props => [
        name,
        email,
        phoneNumber,
        address,
        city,
      ];
}
