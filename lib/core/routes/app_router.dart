import 'package:bookin_appointment/core/di/dependency_injections.dart';
import 'package:bookin_appointment/core/routes/routes.dart';
import 'package:bookin_appointment/features/home/logic/cubit/home_cubit.dart';
import 'package:bookin_appointment/features/home/ui/home_screen.dart';
import 'package:bookin_appointment/features/login/logic/login_cubit/login_cubit.dart';
import 'package:bookin_appointment/features/login/ui/login_screen.dart';
import 'package:bookin_appointment/features/onboarding/onboarding_screen.dart';
import 'package:bookin_appointment/features/signup/logic/signup/signup_cubit.dart';
import 'package:bookin_appointment/features/signup/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getit<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.signupScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getit<SignupCubit>(),
                  child: const SignupScreen(),
                ));
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => HomeCubit(getit())..getSpecialization(),
                  child: const HomeScreen(),
                ));
      default:
        return null;
    }
  }
}
