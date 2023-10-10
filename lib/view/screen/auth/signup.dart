import 'package:ecommerce1/controller/auth/signup_controller.dart';
import 'package:ecommerce1/core/constant/color.dart';
import 'package:ecommerce1/core/functions/alertexitapp.dart';
import 'package:ecommerce1/view/widget/auth/custombuttomauth.dart';
import 'package:ecommerce1/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce1/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce1/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce1/view/widget/auth/testsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => SignUpControllerImp());
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          // ignore: deprecated_member_use
          title: Text('Sign Up',
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
                  const SizedBox(height: 20),
                  const CustomTextTitleAuth(text: "Welcome Back"),
                  const SizedBox(height: 10),
                  const CustomTextBodyText(
                      text:
                          "Sign In With Your Email And Password Or Continue With Social Media"),
                  const SizedBox(height: 65),
                  CustomTextFormAuth(
                    isNumber: false,
                    valid: (val) {},
                    hinttext: "Enter Your Username",
                    iconData: Icons.person_outline,
                    labeltext: "username", mycontroller: controller.username,
                    //mycontroller: ,
                  ),
                  CustomTextFormAuth(
                    isNumber: false,
                    valid: (val) {},
                    hinttext: "Enter Your Email",
                    iconData: Icons.email_outlined,
                    labeltext: "Email", mycontroller: controller.email,
                    //mycontroller: ,
                  ),
                  CustomTextFormAuth(
                    isNumber: true,
                    valid: (val) {},
                    hinttext: "Enter Your Phone",
                    iconData: Icons.phone_android_outlined,
                    labeltext: "Phone", mycontroller: controller.phone,
                    //mycontroller: ,
                  ),
                  CustomTextFormAuth(
                    isNumber: false,
                    valid: (val) {},
                    hinttext: "Enter Your Password",
                    iconData: Icons.lock_outline,
                    labeltext: "Password", mycontroller: controller.password,
                    //mycontroller: ,
                  ),
                  CustomButtomAuth(
                    text: "Sign Up",
                    onPressed: () {
                      controller.signUp();
                    },
                  ),
                  const SizedBox(height: 30),
                  CustomTextSignUpOrSignIn(
                    textone: "have an account?  ",
                    texttwo: "Sign In",
                    onTap: () {
                      controller.goToSignIn();
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
