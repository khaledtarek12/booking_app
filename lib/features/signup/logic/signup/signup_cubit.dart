import 'package:bookin_appointment/features/signup/data/models/signup_requset_body.dart';
import 'package:bookin_appointment/features/signup/data/repo/signup_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.signupRepo) : super(const SignupState.initial());

  final SignupRepo signupRepo;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> emitSignUpStates() async {
    emit(const SignupState.signUpLoading());
    final response = await signupRepo.signUp(
      SignupRequsetBody(
        gender: 0,
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: confirmPasswordController.text,
      ),
    );
    response.when(
      success: (signupResponse) {
        emit(SignupState.signUpSuccess(signupResponse));
      },
      failure: (error) {
        emit(SignupState.signUpError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

    void validateThenDoSignup() {
    if (formKey.currentState!.validate()) {
      emitSignUpStates();
    }
  }
}
