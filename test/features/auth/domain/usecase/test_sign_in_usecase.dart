// import 'package:clubcrafter/src/features/auth/domain/entities/sign_in_request_entity.dart';
// import 'package:clubcrafter/src/features/auth/domain/repository/auth_repository.dart';
// import 'package:clubcrafter/src/features/auth/domain/usecases/sign_in_usecase.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';

// class MockAuthRepository extends Mock implements AuthRepository {}

// void main() {
//   SignInUsecase usecase;
//   late MockAuthRepository mockAuthRepository;

//   setUp(() {
//     mockAuthRepository = MockAuthRepository();
//     usecase = SignInUsecase(mockAuthRepository);
//   });

//   final String tEmail = 'ik509331@gmail.com';
//   final String tPassword = '12345678';
//   final tEntity = SignInRequestEntity(email: tEmail, password: tPassword);

//   test('should get sign in request  entity from authRepository', () async {
//     // arrange
//     when(() {
//       mockAuthRepository.signIn(any);
//     }).thenAnswer((_) async => Right(tEntity));
//   });
// }
