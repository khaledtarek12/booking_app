import 'package:bookin_appointment/core/helpers/shared_pref_const.dart';
import 'package:bookin_appointment/core/routes/app_router.dart';
import 'package:bookin_appointment/core/routes/routes.dart';
import 'package:bookin_appointment/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: SharedPrefConst.isUserLoggedIn
            ? Routes.homeScreen
            : Routes.onBoardingScreen,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
