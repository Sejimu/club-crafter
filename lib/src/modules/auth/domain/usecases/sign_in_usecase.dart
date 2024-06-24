import 'package:clubcrafter/src/modules/auth/domain/entities/sign_in_request_entity.dart';
import 'package:clubcrafter/src/modules/auth/domain/repository/auth_repository.dart';
import 'package:clubcrafter/src/core/utils/failure/dio_failure.dart';
import 'package:clubcrafter/src/core/utils/usecase/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInUsecase
    implements UseCase<Either<Failure, UserCredential>, SignInRequestEntity> {
  final AuthRepository _authRepository;
  SignInUsecase(this._authRepository);

  @override
  Future<Either<Failure, UserCredential>> call(SignInRequestEntity entity) {
    throw UnimplementedError();
  }
}
