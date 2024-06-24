class SignUpWithEmailAndPasswordFailure implements Exception {
  final String message;
  const SignUpWithEmailAndPasswordFailure(
      [this.message = 'An unknown exception occurred.']);

  factory SignUpWithEmailAndPasswordFailure.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure(
            'Email is not valid or badly formatted.');
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordFailure(
            'An account already exists for that email.');
      case 'user-disabled':
        return const SignUpWithEmailAndPasswordFailure(
            'This user has been disabled. Please contact support for help.');
      case 'operation-not-allowed':
        return const SignUpWithEmailAndPasswordFailure(
            'Operation is not allowed.  Please contact support.');
      case 'weak-password':
        return const SignUpWithEmailAndPasswordFailure(
            'Please enter a stronger password.');
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}

class SignInWithEmailAndPasswordFailure implements Exception {
  final String message;
  const SignInWithEmailAndPasswordFailure(
      [this.message = 'An unknown exception occured.']);

  factory SignInWithEmailAndPasswordFailure.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const SignInWithEmailAndPasswordFailure(
            'Email is not valid or badly formatted.');
      case 'user-disabled':
        return const SignInWithEmailAndPasswordFailure(
            'This user has been disabled. Please contact support for help.');
      case 'user-not-found':
        return const SignInWithEmailAndPasswordFailure(
            'Email is not found, please create an account.');
      case 'wrong-password':
        return const SignInWithEmailAndPasswordFailure(
            'Incorrect password, please try again.');
      default:
        return const SignInWithEmailAndPasswordFailure();
    }
  }
}

class SignInWithGoogleFailure implements Exception {
  final String message;
  const SignInWithGoogleFailure(
      [this.message = 'An unknown exception occurred.']);

  factory SignInWithGoogleFailure.fromCode(String code) {
    switch (code) {
      case 'account-exists-with-different-credential':
        return const SignInWithGoogleFailure(
            'Account-exists-with-different-credential');
      case 'invalid-credential':
        return const SignInWithGoogleFailure(
            'The credential received is malformed or has expired.');
      case 'operation-not-allowedl':
        return const SignInWithGoogleFailure(
            'Operation is not allowed.  Please contact support.');
      case 'user-disabled':
        return const SignInWithGoogleFailure(
            'This user has been disabled. Please contact support for help.');
      case 'user-not-found':
        return const SignInWithGoogleFailure(
            'Email is not found, please create an account.');
      case 'wrong-password':
        return const SignInWithGoogleFailure(
            'Incorrect password, please try again.');
      case 'invalid-verification-code':
        return const SignInWithGoogleFailure(
            'The credential verification code received is invalid.');
      case 'invalid-verification-id':
        return const SignInWithGoogleFailure(
            'The credential verification ID received is invalid.');
      default:
        return const SignInWithGoogleFailure();
    }
  }
}
