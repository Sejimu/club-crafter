import 'package:clubcrafter/src/core/config/settings/dio_exception_handler.dart';
import 'package:clubcrafter/src/core/failure/firebase_failure.dart';
import 'package:clubcrafter/src/core/utils/failure/data_state.dart';
import 'package:clubcrafter/src/modules/auth/domain/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../../domain/entities/sign_in_request_entity.dart';


class SignInImplements implements AuthRepository {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;

  SignInImplements(FirebaseAuth auth, GoogleSignIn? googleSignIn)
      : _auth = auth,
        _googleSignIn = googleSignIn ?? GoogleSignIn.standard();

  @override
  Future<DataState<UserCredential>> signIn(SignInRequestEntity entity) async {
    final isConnected =
        await InternetConnectionChecker.createInstance().hasConnection;
    if (!isConnected) {
      return DataFailure(failure: DataSource.noInternetConnection.toString());
    }
    try {
      final user = await _auth.signInWithEmailAndPassword(
          email: entity.email ?? '', password: entity.password ?? '');
      return DataSuccess(data: user);
    } on FirebaseAuthException catch (e) {
      return DataFailure(
          failure: SignInWithEmailAndPasswordFailure.fromCode(e.toString())
              .toString());
    } catch (_) {
      throw const SignInWithEmailAndPasswordFailure();
    }
  }

  @override
  Future<DataState<UserCredential>> signInWithGoogle() async {
    final isConnected =
        await InternetConnectionChecker.createInstance().hasConnection;
    late final AuthCredential credential;
    if (!isConnected) {
      return DataFailure(failure: DataSource.noInternetConnection.toString());
    }
    try {
      final googleUser = await _googleSignIn.signIn();
      final googleAuth = await googleUser!.authentication;
      credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      return DataSuccess(data: await _auth.signInWithCredential(credential));
    } on FirebaseAuthException catch (e) {
      return DataFailure(
          failure: SignInWithGoogleFailure.fromCode(e.toString()).toString());
    } catch (_) {
      throw const SignInWithEmailAndPasswordFailure();
    }
  }
}