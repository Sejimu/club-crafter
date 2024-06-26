import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String message;
  final int code;
  const Failure(this.code, this.message);
  @override
  List<Object?> get props => [code, message];
}
