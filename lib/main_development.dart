import 'package:bookin_appointment/core/di/dependency_injections.dart';
import 'package:bookin_appointment/core/helpers/extensions.dart';
import 'package:bookin_appointment/core/helpers/shared_pref_const.dart';
import 'package:bookin_appointment/core/helpers/shared_pref_helper.dart';
import 'package:bookin_appointment/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  await checkUserLogedIn();
  // to fix text being hidden bug in Flutter_ScreenUtil in realse mode
  await ScreenUtil.ensureScreenSize();
  runApp(const DocApp());
}

checkUserLogedIn() async {
  String? userToekn =
      await SharedPrefHelper.getSecuredString(SharedPrefConst.uaserToken);
  if (userToekn.isNullOrEmpty()) {
    SharedPrefConst.isUserLoggedIn = false;
  } else {
    SharedPrefConst.isUserLoggedIn = true;
  }
}
