import 'package:ecommerce1/core/constant/routes.dart';
import 'package:ecommerce1/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login()
};
