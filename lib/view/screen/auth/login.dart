import 'package:ecommerce1/controller/auth/login_controller.dart';
import 'package:ecommerce1/core/constant/color.dart';
import 'package:ecommerce1/core/functions/alertexitapp.dart';
import 'package:ecommerce1/core/functions/validinput.dart';
import 'package:ecommerce1/view/screen/auth/signup.dart';
import 'package:ecommerce1/view/widget/auth/custombuttomauth.dart';
import 'package:ecommerce1/view/widget/auth/logoauth.dart';
import 'package:ecommerce1/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce1/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce1/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce1/view/widget/auth/testsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          // ignore: deprecated_member_use
          title: Text('Sign In',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  const LogoAuth(),
                  const SizedBox(height: 20),
                  const CustomTextTitleAuth(text: "Welcome Back"),
                  const SizedBox(height: 10),
                  const CustomTextBodyText(
                      text:
                          "Sign In With Your Email And Password Or Continue With Social Media"),
                  const SizedBox(height: 65),
                  CustomTextFormAuth(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 5, 100, "email");
                    },
                    hinttext: "Enter Your Email",
                    iconData: Icons.email_outlined,
                    labeltext: "Email", mycontroller: controller.email,
                    //mycontroller: ,
                  ),
                  GetBuilder<LoginControllerImp>(
                    builder: (controller) => CustomTextFormAuth(
                      obscureText: controller.isshowpassword,
                      onTapIcon: () {
                        controller.showPassword();
                      },
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 5, 30, "password");
                      },
                      hinttext: "Enter Your Password",
                      iconData: Icons.lock_outline,
                      labeltext: "Password", mycontroller: controller.password,
                      //mycontroller: ,
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        controller.goToForgetPassword();
                      },
                      child: const Text("Forget Password",
                          textAlign: TextAlign.end)),
                  CustomButtomAuth(
                    text: "Sign In",
                    onPressed: () {
                      controller.login();
                    },
                  ),
                  const SizedBox(height: 30),
                  CustomTextSignUpOrSignIn(
                    textone: "Don't have an account?  ",
                    texttwo: "SignUp",
                    onTap: () {
                      controller.goToSignUp();
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
