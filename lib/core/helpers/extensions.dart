import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;
  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) =>
      Navigator.pushReplacementNamed(this, routeName, arguments: arguments);

  Future<dynamic> pushNamed(String routeName, {Object? arguments}) =>
      Navigator.pushNamed(this, routeName, arguments: arguments);

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
          {Object? arguments, required RoutePredicate predicate}) =>
      Navigator.pushNamedAndRemoveUntil(this, routeName, predicate,
          arguments: arguments);

  void pop() => Navigator.pop(this);
  
}

extension StringExtension on String? {
  bool isNullOrEmpty() {
    return this == null || this == "";
  }
  
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() {
    return this == null || this!.isEmpty;
  }
}
