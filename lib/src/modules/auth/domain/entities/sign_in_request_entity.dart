import 'package:equatable/equatable.dart';

class SignInRequestEntity with EquatableMixin {
  final String? email;
  final String? password;

  SignInRequestEntity({this.email, this.password});

  @override
  List<Object?> get props => [email, password];
}
