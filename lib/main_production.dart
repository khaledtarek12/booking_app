import 'package:bookin_appointment/core/di/dependency_injections.dart';
import 'package:bookin_appointment/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  setUpGetIt();
  // to fix .sp font bug in Flutter_ScreenUtil in realse mode 
  await ScreenUtil.ensureScreenSize();
  runApp(const DocApp());
}
