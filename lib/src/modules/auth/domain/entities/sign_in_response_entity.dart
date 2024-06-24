import 'package:equatable/equatable.dart';

class SignInResponseEntity with EquatableMixin {
  final String? email;
  final String? password;

  SignInResponseEntity({this.email, this.password});

  @override
  List<Object?> get props => [email, password];
}
