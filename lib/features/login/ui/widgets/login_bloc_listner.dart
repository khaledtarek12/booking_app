import 'package:bookin_appointment/core/helpers/extensions.dart';
import 'package:bookin_appointment/core/routes/routes.dart';
import 'package:bookin_appointment/core/themes/colors.dart';
import 'package:bookin_appointment/core/themes/styles.dart';
import 'package:bookin_appointment/features/login/logic/login_cubit/login_cubit.dart';
import 'package:bookin_appointment/features/login/logic/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (_, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: ColorsManager.mainBlue),
              ),
            );
          },
          success: (data) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          failure: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.error, color: Colors.red, size: 23),
        content: Text(error, style: TextStyles.font14DarkBlueMeduim),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text('Got it', style: TextStyles.font14BlueSemiBold),
          ),
        ],
      ),
    );
  }
}
