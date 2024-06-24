import 'package:clubcrafter/src/core/utils/failure/data_state.dart';
import 'package:clubcrafter/src/modules/auth/domain/entities/sign_in_request_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract interface class AuthRepository {
  Future<DataState<UserCredential>> signIn(SignInRequestEntity entity);
  Future<DataState<UserCredential>> signInWithGoogle();
  // Future<DataState<UserCredential>> signUp();
}
