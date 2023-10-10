import 'package:ecommerce1/controller/auth/resetpassword_controller.dart';

import 'package:ecommerce1/core/constant/color.dart';
import 'package:ecommerce1/view/widget/auth/custombuttomauth.dart';

import 'package:ecommerce1/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce1/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce1/view/widget/auth/customtexttitleauth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        // ignore: deprecated_member_use
        title: Text('Reset Password',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const CustomTextTitleAuth(text: "New Password"),
            const SizedBox(height: 10),
            const CustomTextBodyText(text: "Please Enter New Password"),
            const SizedBox(height: 65),
            CustomTextFormAuth(
              isNumber: false,
              valid: (val) {},
              hinttext: "Enter Your Password",
              iconData: Icons.lock_outline,
              labeltext: "Password", mycontroller: controller.password,
              //mycontroller: ,
            ),
            CustomTextFormAuth(
              isNumber: false,
              valid: (val) {},
              hinttext: "Re Enter Your Password",
              iconData: Icons.lock_outline,
              labeltext: "Password", mycontroller: controller.password,
              //mycontroller: ,
            ),
            CustomButtomAuth(
              text: "save",
              onPressed: () {
                controller.goToSuccessResetPassword();
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
