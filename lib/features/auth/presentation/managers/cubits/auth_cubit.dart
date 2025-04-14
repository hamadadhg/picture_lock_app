/*
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hide_app/features/auth/presentation/managers/cubits/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialAuthState());
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> registerMethod({
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    if (password != confirmPassword) {
      emit(FailureAuthState(errorMessage: 'The password don\'t match'));
      return;
      //return mean(get out from registerMethod if(pa.. != co..), so register operation doesn't happen if this condition was true)
    }
    emit(LoadingAuthState());
    try {
      await auth.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
      emit(SuccessAuthState(successMessage: 'Successful Register'));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(
          FailureAuthState(errorMessage: 'This password is weak or incomplete'),
        );
      } else if (e.code == 'email-already-in-use') {
        emit(FailureAuthState(errorMessage: 'This account already exists'));
      } else {
        emit(
          FailureAuthState(
            errorMessage: 'Register FirebaseAuth error: ${e.message}',
          ),
        );
      }
    } catch (e) {
      emit(FailureAuthState(errorMessage: 'Unknown error: ${e.toString()}'));
    }
  }

  Future<void> loginMethod({
    required String email,
    required String password,
  }) async {
    emit(LoadingAuthState());
    try {
      await auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
      emit(SuccessAuthState(successMessage: 'Successful Login'));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'invalid-email') {
        emit(FailureAuthState(errorMessage: 'This user was not found'));
      } else if (e.code == 'wrong-password' || e.code == 'invalid-credential') {
        emit(FailureAuthState(errorMessage: 'The password is incorrect'));
      } else {
        emit(FailureAuthState(errorMessage: 'Login error: ${e.message}'));
      }
    } catch (e) {
      emit(FailureAuthState(errorMessage: 'Unknown error: ${e.toString()}'));
    }
  }
}
*/
