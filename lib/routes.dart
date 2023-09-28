import 'package:ecommerce1/core/constant/routes.dart';
import 'package:ecommerce1/view/screen/auth/forgetpassword.dart';
import 'package:ecommerce1/view/screen/auth/login.dart';
import 'package:ecommerce1/view/screen/auth/resetpassword.dart';
import 'package:ecommerce1/view/screen/auth/signup.dart';
import 'package:ecommerce1/view/screen/auth/verifycode.dart';
import 'package:ecommerce1/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.onBoarding: (context) => const OnBoarding(),
  AppRoute.signup: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.verifyCode: (context) => const VerifyCode(),
};
