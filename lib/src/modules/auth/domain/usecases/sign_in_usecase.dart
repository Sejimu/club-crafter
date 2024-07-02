import 'package:clubcrafter/src/core/data/domain/base_usecase.dart';
import 'package:clubcrafter/src/core/utils/failure/data_state.dart';
import 'package:clubcrafter/src/modules/auth/domain/entities/sign_in_request_entity.dart';
import 'package:clubcrafter/src/modules/auth/domain/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInUseCase
    implements BaseUseCase<DataState<UserCredential>, SignInRequestEntity> {
  final AuthRepository _authRepository;
  SignInUseCase(this._authRepository);

  @override
  Future<DataState<UserCredential>> call(SignInRequestEntity entity) async {
    return _authRepository.signIn(entity);
  }
}
