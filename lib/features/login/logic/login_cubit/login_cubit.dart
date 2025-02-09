import 'package:bookin_appointment/features/login/data/models/login_request_body.dart';
import 'package:bookin_appointment/features/login/data/repo/login_repo.dart';
import 'package:bookin_appointment/features/login/logic/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(const LoginState.initial());

  final LoginRepo loginRepo;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await loginRepo.login(LoginRequestBody(
        email: emailController.text, password: passwordController.text));
    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.failure(error: error.apiErrorModel.message ?? ''));
    });
  }

  void validateThenDoLogin() {
    if (formKey.currentState!.validate()) {
      emitLoginStates();
    }
  }
}
